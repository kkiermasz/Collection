//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

import SwiftUI

public final class Registry {
    
    // MARK: - Properties
    
    private var registry: [String: AnyCollectionSectionController] = [:]
    
    // MARK: - Initialization
    
    public init() {}
    
    // MARK: - Internal
    
    func register<ControllerType: CollectionSectionController>(controller: ControllerType) {
        let identifier = String(reflecting: ControllerType.SectionType.self)
        registry[identifier] = AnyCollectionSectionController(wrapping: controller)
    }
    
    func view(for section: AnySection) -> some View {
        let identifier = String(reflecting: section.sectionType)
        guard let controller = registry[identifier] else {
            preconditionFailure("Register \"CollectionSectionController\" type for \(identifier)")
        }
        return controller.closure(section)
    }
    
}
