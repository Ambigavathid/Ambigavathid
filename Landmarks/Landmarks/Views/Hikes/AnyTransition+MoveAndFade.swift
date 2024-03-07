//
//  AnyTransition+MoveAndFade.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import SwiftUI
extension AnyTransition {
    
    static var moveAndFade: AnyTransition {
        let insertion = AnyTransition
            .move(edge: .trailing)
            .combined(with: .opacity)
            
        let removal = AnyTransition
            .scale
            .combined(with: .opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

