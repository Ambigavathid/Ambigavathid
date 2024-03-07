//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import SwiftUI



struct CategoryHome: View {

    @Environment(ModelData.self) var modelData

    @State private var showingProfile = false



    var body: some View {

        NavigationSplitView {

            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3/2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                
                let sortedKeys = modelData.categories.keys.sorted()
                ForEach(sortedKeys, id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                        .listRowSeparator(key == sortedKeys.last ? .hidden : .visible)
                        .padding(.vertical)
                }
                .listRowInsets(EdgeInsets())
            }

            .listStyle(.inset)

            .navigationTitle("Featured")

            .toolbar {

                Button {

                    showingProfile.toggle()

                } label: {

                    Label("User Profile", systemImage: "person.crop.circle")

                }

            }

            .sheet(isPresented: $showingProfile) {

                ProfileHost()

                    .environment(modelData)

            }

        } detail: {

            Text("Select a Landmark")

        }

    }

}



#Preview {

    CategoryHome()

        .environment(ModelData())

}
