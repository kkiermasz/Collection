import SwiftUI

struct AnyListSectionController {
 
    let sectionControllerType: Any
    let base: AnyHashable
    
    let closure: (AnySection) -> AnyView

    // MARK: - Initializers
    
    init<ListSectionControllerType: ListSectionController>(wrapping controller: ListSectionControllerType) {
        base = controller
        sectionControllerType = ListSectionControllerType.self
        
        closure = { section in
            guard let section1: ListSectionControllerType.SectionType = section.tryUnbox() else { preconditionFailure() }
            return AnyView(controller.view(for: section1))
        }
    }
    
    func tryUnbox<SectionType: SectionedListSection>() -> SectionType? { base as? SectionType }
    
}
