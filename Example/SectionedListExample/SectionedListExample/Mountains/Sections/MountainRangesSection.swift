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
        VStack(alignment: .leading) {
            Text(section.name)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .center, spacing: 8, content: {
                    ForEach(section.items, id: \.self) { item in
                        switch item {
                        case let .mountainRange(model): MountainRangeView(item: model)
                        }
                    }
                })
            }
        }
    }

}
