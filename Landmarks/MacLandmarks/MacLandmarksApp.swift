//
//  MacLandmarksApp.swift
//  MacLandmarks
//
//  Created by Ambiga on 07/03/24.
//

import SwiftUI

@main
struct MacLandmarksApp: App {
    var body: some Scene {
            WindowGroup {
                ContentView()
                    .environment(ModelData())
            }
        }
}
