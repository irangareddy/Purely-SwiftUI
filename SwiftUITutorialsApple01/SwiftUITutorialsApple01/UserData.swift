//
//  UserData.swift
//  SwiftUITutorialsApple01
//
//  Created by RANGA REDDY NUKALA on 05/05/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}

