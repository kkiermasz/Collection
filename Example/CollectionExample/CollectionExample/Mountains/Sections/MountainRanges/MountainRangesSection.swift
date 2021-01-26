//
//  MountainRangesSection.swift
//  CollectionExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import Collection
import SwiftUI

struct MountainRangesSection: CollectionSectionController {

    func view(for section: Sections.MountainRanges) -> some View {
        VStack(alignment: .leading) {
            Text(section.name)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .center, spacing: 0, content: {
                    ForEach(section.items, id: \.self) { item in
                        switch item {
                        case let .mountainRange(model): MountainRangeView(item: model).padding(.leading, 10)
                        }
                    }
                })
            }
        }
    }

}
