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
        ScrollView(showsIndicators: showsIndicators) {
            LazyVStack {
                ForEach(sections, id: \.self) { section in
                    registry.view(for: section)
                }
            }
        }
    }

    // MARK: - Initialization
    
    public init(showsIndicators: Bool = true, model: [AnySection], @CollectionBuilder builder: () -> Registry) {
        self.showsIndicators = showsIndicators
        registry = builder()
        sections = model
    }
    
}
