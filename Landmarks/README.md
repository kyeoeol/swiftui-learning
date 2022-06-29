# SwiftUI Tutorials

<br>

## Creating and Combining Views

### LandmarksApp.swift
- An app that uses the SwiftUI app life cycle has a structure that conforms to the App protocol. 
- The structure’s body property returns one or more scenes, which in turn provide content for display.
- The @main attribute identifies the app’s entry point

### ContentView.swift
- By default, SwiftUI view files declare two structures.
- The first structure conforms to the View protocol and describes the view’s content and layout.
- The second structure declares a preview for that view.

### To customize a SwiftUI view, you call methods called modifiers.
- Modifiers wrap a view to change its display or other properties.
- Each modifier returns a new view, so it’s common to chain multiple modifiers, stacked vertically.

### You use the @State attribute
- You use the @State attribute to establish a source of truth for data in your app that you can modify from more than one view.
- SwiftUI manages the underlying storage and automatically updates views that depend on the value.
