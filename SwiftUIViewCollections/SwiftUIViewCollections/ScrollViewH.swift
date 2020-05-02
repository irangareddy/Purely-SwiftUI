//
//  ScrollViewH.swift
//  SwiftUIViewCollections
//
//  Created by RANGA REDDY NUKALA on 30/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct ScrollViewH: View {
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(1..<6) { value in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(LinearGradient(.pink,.orange))
                            .frame(width: 300, height: 200, alignment: .center)
                        .overlay(Text("\(value)")
                            .bold()
                            .foregroundColor(.white))
                        
                        
                            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 40) / -20), axis: (x: 0.0, y: 10.0, z: 0.0))
                        

                        
                    }.frame(width: 300, height: 200)
                }
            }.padding(40)
        }
        
    }
}

struct ScrollViewH_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewH()
    }
}
