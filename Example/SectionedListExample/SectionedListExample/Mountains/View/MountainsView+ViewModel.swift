//
//  MountainsView+ViewModel.swift
//  SectionedListExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import SectionedList
import SwiftUI

extension MountainsView {

    class ViewModel: SectionedListDataSource, ObservableObject {
        @Published var sections: [AnySection] = [
            Sections.Mountains(items: [
                .mountain(Mountain(name: "Mount Everest")),
                .mountain(Mountain(name: "Mount Blanc"))
            ]).boxed,
            Sections.MountainRanges(items: [
                .mountainRange(MountainRange(name: "Alpes")),
                .mountainRange(MountainRange(name: "Tatras"))
            ]).boxed
        ]
    }

}
