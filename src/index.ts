import { registerPlugin } from '@capacitor/core';

import type { OpenNavigationPlugin } from './definitions';

const OpenNavigation = registerPlugin<OpenNavigationPlugin>('OpenNavigation', {
  web: () => import('./web').then((m) => new m.OpenNavigationWeb()),
});

export * from './definitions';
export { OpenNavigation };
