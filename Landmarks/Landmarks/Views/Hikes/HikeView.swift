//
//  HikeView.swift
//  Landmarks
//
//  Created by Ambiga on 05/03/24.
//

import SwiftUI

struct HikeView: View {
    var hike: Hike
    
    @State private var isShowingDetail = true
    
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(verbatim: "Hike name")
                        .font(.headline)
                    Text(verbatim: "Hike distance")
                }

                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        self.isShowingDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .font(.system(size: 22))
                        .rotationEffect(.radians(isShowingDetail ? (.pi / 2) : 0))
                        .scaleEffect(isShowingDetail ? 1.35 : 1)
                        .padding()
                }
            }
            
            if isShowingDetail {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HikeView(hike: HikeDataStore().hikes[0])
                .padding()
            Spacer()
        }
    }
}
