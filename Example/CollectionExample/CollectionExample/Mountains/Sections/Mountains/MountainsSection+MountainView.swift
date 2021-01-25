//
//  MountainsSection+MountainView.swift
//  CollectionExample
//
//  Created by Jakub Kiermasz on 13/01/2021.
//

import SwiftUI

extension MountainsSection {

    struct MountainView: View {

        // MARK: - Properties

        let item: Mountain

        // MARK: - Initialization

        var body: some View {
            ZStack {
                item.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(item.name)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 6)
            }
            .frame(height: 48)
            .cornerRadius(8)
        }

    }

}
