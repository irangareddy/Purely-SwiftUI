//
//  LandmarksLists.swift
//  SwiftUITutorialsApple01
//
//  Created by RANGA REDDY NUKALA on 29/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct LandmarksList: View {
    
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: DetailView(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
         LandmarksList()
        
    }
}
