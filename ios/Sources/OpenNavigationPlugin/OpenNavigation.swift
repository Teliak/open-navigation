import Foundation
import Capacitor

@objc public class OpenNavigation: NSObject {
    @objc public func openNavigationApp(_ call: CAPPluginCall) -> Void {
        var url: URL?

        // Vérifiez si des coordonnées sont passées
        if let latitude = call.getString("latitude"),
           let longitude = call.getString("longitude") {
            url = URL(string: "maps://?daddr=\(latitude),\(longitude)")
        }
        // Vérifiez si une adresse est passée
        else if let address = call.getString("address") {
            guard let encodedAddress = address.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
                call.reject("Adresse non valide.")
                return
            }
            url = URL(string: "maps://?daddr=\(encodedAddress)")
        } else {
            call.reject("Veuillez fournir des coordonnées ou une adresse.")
            return
        }

        // Vérifiez et ouvrez l'application de navigation
        if let navigationUrl = url, UIApplication.shared.canOpenURL(navigationUrl) {
            UIApplication.shared.open(navigationUrl, options: [:]) { success in
                if success {
                    call.resolve(["status": "Navigation ouverte avec succès"])
                } else {
                    call.reject("Échec lors de l'ouverture de l'application de navigation.")
                }
            }
        } else {
            call.reject("Impossible d'ouvrir l'application de navigation. Vérifiez vos paramètres ou installez une application compatible.")
        }
    }
}

