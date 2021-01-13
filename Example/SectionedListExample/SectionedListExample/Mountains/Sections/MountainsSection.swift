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
        VStack(alignment: .leading) {
            Text("Mountains")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            LazyVStack(alignment: .center, spacing: 8, content: {
                ForEach(section.items, id: \.self) { item in
                    switch item {
                    case let .mountain(model):
                        ZStack {
                            Rectangle().foregroundColor(.secondary).cornerRadius(4).frame(height: 48)
                            Text(model.name).padding(8).accentColor(.primary)
                        }
                    }
                }
            })
        }
    }

}
