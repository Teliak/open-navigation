package com.astechsolutions.plugins.opennavigation;

import android.content.Intent;
import android.net.Uri;

import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "OpenNavigation")
public class OpenNavigationPlugin extends Plugin {

    @PluginMethod
    public void openNavigationApp(PluginCall call) {
        String latitude = call.getString("latitude");
        String longitude = call.getString("longitude");
        String address = call.getString("address");

        Intent intent;

        if (latitude != null && longitude != null) {
            // Intent avec coordonnées GPS
            Uri gmmIntentUri = Uri.parse("geo:0,0?q=" + latitude + "," + longitude);
            intent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        } else if (address != null) {
            // Intent avec adresse
            Uri gmmIntentUri = Uri.parse("geo:0,0?q=" + Uri.encode(address));
            intent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        } else {
            call.reject("Veuillez fournir soit des coordonnées (latitude et longitude) soit une adresse.");
            return;
        }

        // Vérifiez que l'intent peut être traité
        if (intent.resolveActivity(getContext().getPackageManager()) != null) {
            getActivity().startActivity(intent);
            call.resolve();
        } else {
            call.reject("Aucune application de navigation disponible.");
        }
    }
}
