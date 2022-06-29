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

<br>

## Building Lists and Navigation

### You can use a Group to return multiple previews from a preview provider.
- Group is a container for grouping view content. 
- Xcode renders the group’s child views as separate previews in the canvas.

### Lists work with identifiable data.
- You can make your data identifiable in one of two ways: 
- by passing along with your data a key path to a property that uniquely identifies each element,
- or by making your data type conform to the Identifiable protocol.

### ForEach operates on collections the same way as the list
- ForEach operates on collections the same way as the list which means you can use it anywhere you can use a child view, such as in stacks, lists, groups, and more.
- When the elements of your data are simple value types — like the strings you’re using here — you can use \.self as key path to the identifier.

<br>

## Handling User Input

### Keyword
- ObservableObject
- EnvironmentObject
- StateObject
- Binding
