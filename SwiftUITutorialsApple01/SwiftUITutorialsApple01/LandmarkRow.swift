//
//  LandmarkRow.swift
//  SwiftUITutorialsApple01
//
//  Created by RANGA REDDY NUKALA on 28/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//
//
//import SwiftUI
//
//struct LandmarkRow: View {
//
//    let landmarks: [Landmark]
//
//    var body: some View {
//
//        HStack {
//            landmark.image
//            .resizable()
//            .frame(width: 50, height: 50)
//            Text(landmark.name)
//            Spacer()
//
//
//
//
//        }
//
//    }
//}
//
//struct LandmarkRow_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkRow(landmark: landmarkData[0])
//    }
//}


import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
