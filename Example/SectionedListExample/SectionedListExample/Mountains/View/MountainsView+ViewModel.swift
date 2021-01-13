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
            Sections.MountainRanges(name: "European mountain ranges", items: [
                .mountainRange(MountainRange(name: "Alpes")),
                .mountainRange(MountainRange(name: "Tatras")),
                .mountainRange(MountainRange(name: "Apennines"))
            ]).boxed,
            Sections.MountainRanges(name: "Asian mountain ranges", items: [
                .mountainRange(MountainRange(name: "Himalayas")),
                .mountainRange(MountainRange(name: "Karakoram"))
            ]).boxed
        ]
    }

}
