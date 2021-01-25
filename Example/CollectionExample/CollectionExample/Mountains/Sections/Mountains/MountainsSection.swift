//
//  MountainsSection.swift
//  CollectionExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import Collection
import SwiftUI

struct MountainsSection: ListSectionController {

    func view(for section: Sections.Mountains) -> some View {
        VStack(alignment: .leading) {
            Text("Mountains")
                .font(.headline)
                .padding(.leading, 5)
                .padding(.top, 5)
            LazyVStack(alignment: .center, spacing: 8, content: {
                ForEach(section.items, id: \.self) { item in
                    switch item {
                    case let .mountain(model): MountainView(item: model)
                    }
                }
            })
        }
        .padding(.horizontal, 10)
    }

}
