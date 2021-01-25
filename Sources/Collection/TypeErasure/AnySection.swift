//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

public struct AnySection: Hashable {
    
    // MARK: - Properties

    let sectionType: Any

    private let base: AnyHashable

    // MARK: - Initialization

    init<SectionType: CollectionSection>(wrapping section: SectionType) {
        base = section
        sectionType = SectionType.self
    }

    // MARK: - API

    func restore<SectionType: CollectionSection>() -> SectionType? { base as? SectionType }

    // MARK: - Equatable

    public static func == (lhs: AnySection, rhs: AnySection) -> Bool {
        lhs.base == rhs.base
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(base)
    }

}
