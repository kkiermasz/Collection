import SwiftUI

public protocol ListSectionController: Hashable {
    
    associatedtype SectionType: SectionedListSection
    associatedtype ViewType: View
    
    func view(for section: SectionType) -> ViewType
     
}
