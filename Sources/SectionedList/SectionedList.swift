import SwiftUI

public struct SectionedList: View {

    private let sections: [AnySection]
    private let registry: Registry

    public var body: some View {
        List {
            ForEach(sections, id: \.self) { section in
                registry.view(for: section)
            }
        }
//        ScrollView {
//        VStack {
//            ForEach(sections, id: \.self) { section in
//                registry.view(for: section)
//            }
//        }
//        }
    }

    public init(model: [AnySection], @SectionedListBuilder builder: () -> Registry) {
        registry = builder()
        sections = model
    }

}
