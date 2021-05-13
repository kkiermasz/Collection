//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

import SwiftUI

public struct Collection: View {

    // MARK: - Properties

    private let sections: [AnySection]
    private let registry: Registry

    public var showsIndicators: Bool

    // MARK: - Getters

    public var body: some View {
        GeometryReader { geometryWithSafeArea in
            GeometryReader { _ in
                ScrollView(showsIndicators: showsIndicators) {
                    LazyVStack {
                        ForEach(sections, id: \.self) { section in
                            registry.view(for: section)
                        }
                    }
                    .padding(geometryWithSafeArea.safeAreaInsets)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }

    // MARK: - Initialization

    public init(showsIndicators: Bool = true, dataSource: CollectionDataSource, @CollectionBuilder builder: () -> Registry) {
        self.showsIndicators = showsIndicators
        registry = builder()
        sections = dataSource.sections
    }

}
