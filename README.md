# open-navigation

Capacitor plugin to open natively an navigation app installed on the OS

## Install

```bash
npm install open-navigation
npx cap sync
```

Add to capacitor.config.ts the following line:

```typescript
plugins: {
  OpenNavigationPlugin: {},
  ...
}
```

And in Info.plist add the following lines:

```xml
<dict>
    <key>LSApplicationQueriesSchemes</key>
    <array>
        <string>maps</string>
        ...
    </array>
    ...
</dict>
```

## API

<docgen-index>

* [`openNavigationApp(...)`](#opennavigationapp)

</docgen-index>

<docgen-api>

### openNavigationApp(...)

```typescript
openNavigationApp(options: { latitude?: string; longitude?: string; address?: string; }) => Promise<void>
```
Give only address or latitude and longitude to open the navigation app with the given location.

| Param         | Type                                                                      |
| ------------- | ------------------------------------------------------------------------- |
| **`options`** | <code>{ latitude?: string; longitude?: string; address?: string; }</code> |

--------------------

</docgen-api>
