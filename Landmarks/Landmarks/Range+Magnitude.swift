//
//  Range+Magnitude.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import Foundation


extension Range where Bound: Numeric {
    
    var magnitude: Bound {
        self.upperBound - self.lowerBound
    }
}
