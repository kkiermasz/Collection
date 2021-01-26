//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

@_functionBuilder
public struct CollectionBuilder {
    
    // As there is no way to based that on protocols and e. g. variadic arguments
    // due to the associated values, it had to be done this way.
    // If you have any idea how to work around it let me know in any way
    
    public static func buildBlock<C0: CollectionSectionController>(_ controller: C0) -> Registry {
        let registry = Registry()
        registry.register(controller: controller)
        return registry
    }
    
    public static func buildBlock<C0: CollectionSectionController, C1: CollectionSectionController>(_ c0: C0, _ c1: C1) -> Registry {
        let registry = Registry()
        registry.register(controller: c0)
        registry.register(controller: c1)
        return registry
    }
    
    public static func buildBlock<C0: CollectionSectionController, C1: CollectionSectionController, C2: CollectionSectionController>(_ c0: C0, _ c1: C1, _ c2: C2) -> Registry {
        let registry = Registry()
        registry.register(controller: c0)
        registry.register(controller: c1)
        registry.register(controller: c2)
        return registry
    }
    
    public static func buildBlock<C0: CollectionSectionController, C1: CollectionSectionController, C2: CollectionSectionController, C3: CollectionSectionController>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> Registry {
        let registry = Registry()
        registry.register(controller: c0)
        registry.register(controller: c1)
        registry.register(controller: c2)
        registry.register(controller: c3)
        return registry
    }
    
    public static func buildBlock<C0: CollectionSectionController, C1: CollectionSectionController, C2: CollectionSectionController, C3: CollectionSectionController, C4: CollectionSectionController>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> Registry {
        let registry = Registry()
        registry.register(controller: c0)
        registry.register(controller: c1)
        registry.register(controller: c2)
        registry.register(controller: c3)
        registry.register(controller: c4)
        return registry
    }
    
}
