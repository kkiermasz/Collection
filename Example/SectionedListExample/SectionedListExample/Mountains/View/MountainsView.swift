//
//  ContentView.swift
//  SectionedListExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import SectionedList
import SwiftUI

struct MountainsView: View {
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            SectionedList(showsIndicators: false, model: viewModel.sections) {
                MountainRangesSection()
                MountainsSection()
            }
            .navigationTitle("Mountains list")
        }
    }
}
