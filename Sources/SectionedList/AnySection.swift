public struct AnySection: SectionedListSection {
    
    // MARK: - Properties

    public let items: [AnyItem]

    let sectionType: Any

    private let base: AnyHashable

    // MARK: - Initializers

    init<SectionType: SectionedListSection>(wrapping section: SectionType) {
        items = section.items.map { item in AnyItem(wrapping: item) }

        base = section
        sectionType = SectionType.self
    }

    // MARK: - API

    func tryUnbox<SectionType: SectionedListSection>() -> SectionType? { base as? SectionType }

    // MARK: - Equatable

    public static func == (lhs: AnySection, rhs: AnySection) -> Bool {
        lhs.base == rhs.base
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(base)
    }

}
