# open-navigation

Capacitor plugin to open natively an navigation app installed on the OS

## Install

| Plugin      | Capacitor |
|-------------|-----------|
| **`7.0.0`** | **`v7`**  |
| **`0.0.2`** | **`v6`**  |

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
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### openNavigationApp(...)

```typescript
openNavigationApp(options: { latitude?: string; longitude?: string; address?: string; }) => Promise<void>
```

| Param         | Type                                                                      |
| ------------- | ------------------------------------------------------------------------- |
| **`options`** | <code>{ latitude?: string; longitude?: string; address?: string; }</code> |

--------------------

</docgen-api>
