//
//  MountainsView+ViewModel.swift
//  CollectionExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import Collection
import SwiftUI

extension MountainsView {

    class ViewModel: CollectionDataSource, ObservableObject {
        @Published var sections: [AnySection] = [
            Sections.Mountains(items: [
                .mountain(Mountain(name: "Mount Everest")),
                .mountain(Mountain(name: "Mont Blanc")),
                .mountain(Mountain(name: "Gerlachov Peak")),
                .mountain(Mountain(name: "K2")),
            ]).eraseToAnySection(),
            Sections.MountainRanges(name: "European mountain ranges", items: [
                .mountainRange(MountainRange(name: "Alpes")),
                .mountainRange(MountainRange(name: "Tatras")),
                .mountainRange(MountainRange(name: "Apennines"))
            ]).eraseToAnySection(),
            Sections.MountainRanges(name: "Asian mountain ranges", items: [
                .mountainRange(MountainRange(name: "Himalayas")),
                .mountainRange(MountainRange(name: "Karakoram"))
            ]).eraseToAnySection()
        ]
    }

}
