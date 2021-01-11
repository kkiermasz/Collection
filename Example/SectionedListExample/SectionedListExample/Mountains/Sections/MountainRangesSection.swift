//
//  MountainRangesSection.swift
//  SectionedListExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import SectionedList
import SwiftUI

struct MountainRangesSection: ListSectionController {
    
    func view(for section: Sections.MountainRanges) -> some View {
        Text("\(section.self)" as String)
    }

}
