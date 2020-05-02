//
//  LandmarkRow.swift
//  SwiftUITutorialsApple01
//
//  Created by RANGA REDDY NUKALA on 29/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                
                Image(systemName: "star.fill")
                .imageScale(.medium)
                .padding(20)
                .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }.previewLayout(.sizeThatFits)
    }
    
}
