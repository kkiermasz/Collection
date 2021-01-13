//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

public protocol SectionedListSection: Hashable {

    // MARK: - Type Aliases

    associatedtype ItemType: Hashable

    // MARK: - Properties

    var items: [ItemType] { get }

}

extension SectionedListSection {
    
    public func eraseToAnySection() -> AnySection { AnySection(wrapping: self) }
    
}
