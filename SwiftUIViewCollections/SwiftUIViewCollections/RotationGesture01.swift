//
//  RotationGesture01.swift
//  SwiftUIViewCollections
//
//  Created by RANGA REDDY NUKALA on 01/05/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct RotationGesture01: View {
    @State var angle = Angle(degrees: 0.0)
    
    var rotation: some Gesture {
        
        RotationGesture()
            .onChanged { angle in
                self.angle = angle
            }
        
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15, style: .continuous)
            .frame(width: 300, height: 200, alignment: .center)
            .rotationEffect(self.angle)
            .gesture(rotation)
    }
}

struct RotationGesture01_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesture01()
    }
}
