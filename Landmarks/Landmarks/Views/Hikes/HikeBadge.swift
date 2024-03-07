//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import SwiftUI
//
//struct HikeBadge: View {
//    var name: String
//    
//    var body: some View {
//        VStack(alignment: .center) {
//            Badge()
//                .frame(width: 300, height: 300)
//                .scaleEffect(1.0 / 3.0)
//                .frame(width: 100, height: 100)
//            
//            Text(name)
//                .font(.caption)
//                .accessibility(label: Text("Badge for \(name)"))
//        }
//    }
//}
//
//struct HikeBadge_Previews: PreviewProvider {
//    static var previews: some View {
//        HikeBadge(name: "Climbed Everest")
//    }
//}

struct HikeBadge: View {

    var name: String



    var body: some View {

        VStack(alignment: .center) {

            Badge()

                .frame(width: 300, height: 300)

                .scaleEffect(1.0 / 3.0)

                .frame(width: 100, height: 100)

            Text(name)

                .font(.caption)

                .accessibilityLabel("Badge for \(name).")

        }

    }

}



#Preview {

    HikeBadge(name: "Preview Testing")

}
