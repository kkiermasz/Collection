//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

import SwiftUI

struct AnyCollectionSectionController {
 
    let sectionControllerType: Any
    let base: AnyHashable
    
    let closure: (AnySection) -> AnyView

    // MARK: - Initialization
    
    init<CollectionSectionControllerType: CollectionSectionController>(wrapping controller: CollectionSectionControllerType) {
        base = controller
        sectionControllerType = CollectionSectionControllerType.self
        
        closure = { section in
            guard let restored: CollectionSectionControllerType.SectionType = section.restore() else {
                preconditionFailure("Closure argument type does not match controller's section type")
            }
            return AnyView(controller.view(for: restored))
        }
    }
    
}
