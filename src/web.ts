import { WebPlugin } from '@capacitor/core';

import type { OpenNavigationPlugin } from './definitions';

export class OpenNavigationWeb extends WebPlugin implements OpenNavigationPlugin {
  async openNavigationApp(options: { latitude?: string, longitude?: string, address?: string }): Promise<void> {
    window.open(`https://www.google.com/maps/search/?api=1&query=${options.latitude},${options.longitude}`);
  }
}
