@_functionBuilder
public struct SectionedListBuilder {

    public static func buildBlock<C0: ListSectionController>(_ controller: C0) -> Registry {
        let registry = Registry()
        registry.register(controller: controller)
        return registry
    }
    
    public static func buildBlock<C0: ListSectionController, C1: ListSectionController>(_ c0: C0, _ c1: C1) -> Registry {
        let registry = Registry()
        registry.register(controller: c0)
        registry.register(controller: c1)
        return registry
    }
    
}
