import Foundation
import Capacitor

@objc(OpenNavigationPlugin)
public class OpenNavigationPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "OpenNavigationPlugin"
    public let jsName = "OpenNavigation"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "openNavigationApp", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = OpenNavigation()

    @objc func openNavigationApp(_ call: CAPPluginCall) {
        implementation.openNavigationApp(call)
    }
}
