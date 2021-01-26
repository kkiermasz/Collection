//
//  Copyright © 2021 Jakub Kiermasz. All rights reserved.
//

import SwiftUI

public protocol CollectionSectionController: Hashable {
    
    associatedtype SectionType: CollectionSection
    associatedtype ViewType: View
    
    func view(for section: SectionType) -> ViewType
     
}
