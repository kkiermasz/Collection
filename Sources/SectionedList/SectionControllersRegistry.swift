import SwiftUI

public final class Registry {
    
    private var registry: [String: AnyListSectionController] = [:]
    
    public init() {}
    
    func register<ControllerType: ListSectionController>(controller: ControllerType) {
        let identifier = String(reflecting: ControllerType.SectionType.self)
        registry[identifier] = AnyListSectionController(wrapping: controller)
    }
    
    func view(for section: AnySection) -> some View {
        let identifier = String(reflecting: section.sectionType)
        guard let controller = registry[identifier] else {
            preconditionFailure("Register \"ListSectionController\" type for \(identifier)")
        }
        return controller.closure(section)
    }
    
}
