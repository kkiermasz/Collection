//
//  ContentView.swift
//  CollectionExample
//
//  Created by Jakub Kiermasz on 11/01/2021.
//

import Collection
import SwiftUI

struct MountainsView: View {
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            Collection(showsIndicators: false, model: viewModel.sections) {
                MountainRangesSection()
                MountainsSection()
            }
            .navigationTitle("Mountains list")
        }
    }
}
