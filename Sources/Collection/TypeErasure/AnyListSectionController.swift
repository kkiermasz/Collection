//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

import SwiftUI

struct AnyListSectionController {
 
    let sectionControllerType: Any
    let base: AnyHashable
    
    let closure: (AnySection) -> AnyView

    // MARK: - Initialization
    
    init<ListSectionControllerType: ListSectionController>(wrapping controller: ListSectionControllerType) {
        base = controller
        sectionControllerType = ListSectionControllerType.self
        
        closure = { section in
            guard let restored: ListSectionControllerType.SectionType = section.restore() else { preconditionFailure() }
            return AnyView(controller.view(for: restored))
        }
    }
    
}
