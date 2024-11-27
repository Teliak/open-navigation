export interface OpenNavigationPlugin {
  openNavigationApp(options: { latitude?: string; longitude?: string; address?: string }): Promise<void>;
}
