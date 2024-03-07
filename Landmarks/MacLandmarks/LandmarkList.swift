//
//  LandmarkList.swift
//  MacLandmarks
//
//  Created by Ambiga on 07/03/24.
//

import SwiftUI



struct LandmarkList: View {

    @Environment(ModelData.self) var modelData

    @State private var showFavoritesOnly = false



    var filteredLandmarks: [Landmark] {

        modelData.landmarks.filter { landmark in

            (!showFavoritesOnly || landmark.isFavorite)

        }

    }



    var body: some View {

        NavigationSplitView {

            List {

                Toggle(isOn: $showFavoritesOnly) {

                    Text("Favorites only")

                }



                ForEach(filteredLandmarks) { landmark in

                    NavigationLink {

                        LandmarkDetail(landmark: landmark)

                    } label: {

                        LandmarkRow(landmark: landmark)

                    }

                }

            }

            .animation(.default, value: filteredLandmarks)

            .navigationTitle("Landmarks")

            .frame(minWidth: 300)

            .toolbar {

                ToolbarItem {

                    Menu {



                    } label: {

                        Label("Filter", systemImage: "slider.horizontal.3")

                    }

                }

            }

        } detail: {

            Text("Select a Landmark")

        }

    }

}



#Preview {

    LandmarkList()

        .environment(ModelData())

}
