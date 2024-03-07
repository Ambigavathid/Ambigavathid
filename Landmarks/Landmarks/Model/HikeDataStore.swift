//
//  HikeDataStore.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import SwiftUI
import Combine


final class HikeDataStore: ObservableObject {
    private static let savedHikes: [Hike] = DataLoader.loadModels(fromFileNamed: "hikeData.json")
    
    @Published var hikes: [Hike]
    
    
    init(hikes: [Hike] = HikeDataStore.savedHikes) {
        self.hikes = hikes
    }
}
