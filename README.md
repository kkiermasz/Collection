# Collection

Collection is a simple wrapper for a ScrollView, to facilitate the creation of complex list layouts in SwiftUI. This is a kind of workaround for the lack of collection view in SwiftUI.

this repository was created for the purpose of [article on Medium](https://betterprogramming.pub/building-a-complex-list-in-swiftui-196a6989726b).

It allows your main view to look like this:
```swift
struct MountainsView: View {
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            Collection(showsIndicators: false, model: viewModel.sections) {
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

Collection is shared under the MIT license. See the [LICENSE](./LICENSE) for more info.
