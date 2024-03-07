//
//  ContentView.swift
//  Landmarks
//
//  Created by Ambiga on 04/03/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            VStack {
//                MapView()
//                    .frame(height: 300)
//                CircleImage()
//                    .offset(y: -130)
//                    .padding(.bottom, -130)
//                Divider()
//                Text("First SwiftUI - Hello, world!")
//                    .font(.title)
//                    .multilineTextAlignment(.center)
//                    .foregroundStyle(.blue)
//                HStack {
//                    Text("Welcome")
//                        .font(.subheadline)
//                    Spacer()
//                    Text("Ambi")
//                }
//            }
//        }
//        .padding()
//        Spacer()
//    }
//}
//
//#Preview {
//    ContentView()
//}
import SwiftUI


//struct ContentView: View {
//    var body: some View {
//        LandmarkList()
////        VStack {
////            MapView()
////                .frame(height: 300)
////
////
////            CircleImage()
////                .offset(y: -150)
////                .padding(.bottom, -150)
////
////
////            VStack(alignment: .leading) {
////                
////                Text("First SwiftUI - Hello, world!")
////                    .font(.title)
////                    .multilineTextAlignment(.center)
////                    .foregroundStyle(.blue)
////                HStack {
////                    Text("Welcome")
////                        .font(.subheadline)
////                    Spacer()
////                    Text("Ambi")
////                }
////                Divider()
////                Text("Turtle Rock")
////                    .font(.title)
////                HStack {
////                    Text("Joshua Tree National Park")
////                    Spacer()
////                    Text("California")
////                }
////                .font(.subheadline)
////                .foregroundStyle(.secondary)
////
////
////                Divider()
////
////
////                Text("About Turtle Rock")
////                    .font(.title2)
////                Text("Descriptive text goes here.")
////                Divider()
////            }
////            .padding()
////
////
////            Spacer()
////        }
//    }
//}

//struct ContentView: View {
//
//    var body: some View {
//
//        LandmarkList()
//
//    }
//
//}
//
//
//
//#Preview {
//
//    ContentView()
//
//        .environment(ModelData())
//
//}
//
//
//#Preview {
//    ContentView()
//}
struct ContentView: View {

    @State private var selection: Tab = .featured



    enum Tab {

        case featured

        case list

    }



    var body: some View {

        TabView(selection: $selection) {

            CategoryHome()

                .tabItem {

                    Label("Featured", systemImage: "star")

                }

                .tag(Tab.featured)



            LandmarkList()

                .tabItem {

                    Label("List", systemImage: "list.bullet")

                }

                .tag(Tab.list)

        }

    }

}



#Preview {

    ContentView()

        .environment(ModelData())

}
