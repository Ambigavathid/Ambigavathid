//
//  GraphCapsule.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import SwiftUI

struct GraphCapsule: View {
    var index: Int
    var containerHeight: CGFloat
    var observationSetRange: Range<Double>
    var overallRange: Range<Double>
    
    
    var body: some View {
        Capsule()
            .fill(Color.white)
            .frame(height: containerHeight * heightRatio, alignment: .bottom)
            .offset(x: 0, y: containerHeight * -offsetRatio)
            .animation(animation)
    }
}


// MARK: - Computeds
extension GraphCapsule {
    
    var heightRatio: CGFloat {
        max(CGFloat(observationSetRange.magnitude / overallRange.magnitude), 0.15)
    }
    
    var offsetRatio: CGFloat {
        CGFloat(
            (observationSetRange.lowerBound - overallRange.lowerBound) / overallRange.magnitude
        )
    }
    
    var animation: Animation {
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
            .delay(Double(index) * 0.03)
    }
}



struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
        GraphCapsule(
            index: 0,
            containerHeight: 200,
            observationSetRange: 13 ..< 42,
            overallRange: 2 ..< 98
        )
        .shadow(color: .purple, radius: 12, x: 0, y: 0)
    }
}

