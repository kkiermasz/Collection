//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

public protocol CollectionSection: Hashable {}

extension CollectionSection {
    
    public func eraseToAnySection() -> AnySection { AnySection(wrapping: self) }
    
}
