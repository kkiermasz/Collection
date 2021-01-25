//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

import SwiftUI

public final class Registry {
    
    // MARK: - Properties
    
    private var registry: [String: AnyListSectionController] = [:]
    
    // MARK: - Initialization
    
    public init() {}
    
    // MARK: - Internal
    
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
