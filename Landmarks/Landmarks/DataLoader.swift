//
//  DataLoader.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import Foundation


enum DataLoader {
    
    static func loadModels<Model: Decodable>(fromFileNamed fileName: String) -> [Model] {
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("Couldn't find \(fileName) in main bundle.")
        }

        let data: Data
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            
            return try decoder.decode([Model].self, from: data)
        } catch {
            fatalError("Couldn't parse \(fileName) as \(Model.self):\n\(error)")
        }
    }
}
