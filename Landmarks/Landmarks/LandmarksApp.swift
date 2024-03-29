//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ambiga on 04/03/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

        var body: some Scene {

            WindowGroup {

                ContentView()

                    .environment(modelData)

            }

        }
}
