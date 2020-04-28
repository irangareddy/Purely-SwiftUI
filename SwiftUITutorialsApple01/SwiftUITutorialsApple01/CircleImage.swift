//
//  CircleImage.swift
//  SwiftUITutorialsApple01
//
//  Created by RANGA REDDY NUKALA on 28/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
