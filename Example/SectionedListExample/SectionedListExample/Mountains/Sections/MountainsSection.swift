//
//  MountainsSection.swift
//  SectionedListExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import SectionedList
import SwiftUI

struct MountainsSection: ListSectionController {
    
    func view(for section: Sections.Mountains) -> some View {
        Text("\(section.self)" as String)
    }

}
