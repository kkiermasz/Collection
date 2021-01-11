public protocol SectionedListSection: Hashable {

    // MARK: - Type Aliases

    associatedtype ItemType: Hashable

    // MARK: - Properties

    var items: [ItemType] { get }

}

extension SectionedListSection {
    
    public var boxed: AnySection { AnySection(wrapping: self) }
    
}
