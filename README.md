# React Native Siri

React Native SiriKit helpers.

## Status

Under heavy development, a proof of concept will be available on very short notice.

## Todos

- [ ] Install instructions
- [ ] Bridge requestSiriAuthorization
- [ ] Bridge handlers
- [ ] Bridge registering user-specific vocabulary terms
- [ ] Intent default storyboards (check wether React Native can kick in at this point)

## Install instructions

Include the NSSiriUsageDescription key in your iOS app’s Info.plist file. The
value for this key is a string that describes what information your app shares
with SiriKit.

```xml
<key>NSSiriUsageDescription</key>
<string>This app sents information to Siri</string>
```

Call the requestAuthorization method of RNSiri at some point during your app’s
execution.

```javascript
import { RNSiri } from 'NativeModules';

RNSiri.requestAuthorization((status) => {
  // Do something with the status
});
```
