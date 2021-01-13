# SectionedList

SectionedList is a simple wrapper for a ScrollView, to facilitate the creation of complex list layouts in SwiftUI. This is a kind of workaround for the lack of collection view in SwiftUI.

It allows your main view to look like this:
```swift
struct MountainsView: View {
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            SectionedList(showsIndicators: false, model: viewModel.sections) {
                MountainRangesSection()
                MountainsSection()
            }
            .navigationTitle("Mountains list")
        }
    }
}
```

## Demo

The example project can be found in the workspace associated with the project.
Remember that you have to build the package first.

## License

SectionedList is shared under the MIT license. See the [LICENSE](./LICENSE) for more info.
