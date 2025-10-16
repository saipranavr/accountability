## Accountability (iOS)

### What it does
- Automation action to open an empty screen in the app
- App picker parameter with popular apps (names shown; each maps to an iOS URL scheme)
- The blank screen is intended to open when a chosen app is opened via a Shortcuts automation ("When App is opened")

### Current App Intent
- `OpenEmptyScreenIntent`: When run, sets `AppStorageKeys.shouldShowEmptyScreen` causing `RootView` to show `EmptyScreenView` once.
- Parameter: `app` (optional) from `PopularApp` enum. Only the app names are displayed in the picker; the enum raw values are URL schemes.

### Project structure
```
accountability/
  App/
    AccountabilityApp.swift         # App entry point
  UI/
    RootView.swift                  # Root routing logic
    EmptyScreenView.swift           # Blank screen view
    ContentView.swift               # Default content
  Intents/
    OpenEmptyScreenIntent.swift     # Shortcut action: open empty screen (+ app picker)
    PopularApp.swift                # Popular apps enum (name + iOS URL)
  Support/
    AppStorageKeys.swift            # UserDefaults/AppStorage keys
```

### Notes
- iOS 17+ is required for `AppIntents`.
- The picker shows friendly names; URL schemes are available via the enum raw value if needed later.
- Configure the behavior using the Shortcuts app: create a Personal Automation → "App" → "When App is opened" → add this action.


