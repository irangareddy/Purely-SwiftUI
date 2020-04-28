//
//  NeumorphismView02.swift
//  SwiftUIViewCollections
//
//  Created by RANGA REDDY NUKALA on 26/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI




struct NeumorphismView02: View {
    var body: some View {
        ZStack {
            Color.offWhite
            
            VStack(spacing: 0) {
                Circle()
                    .frame(height: 300, alignment: .center)
                    .foregroundColor(Color.offWhite)
                    .padding(0)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    .overlay(Image("boxing").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 300, alignment: .center)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5))
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 250, height: 60, alignment: .center)
                    .padding(.all)
                    .foregroundColor(Color.offWhite)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    
                    .overlay(
                        
                        HStack(alignment: .center,spacing: 20) {
                            
                            Image("ios-logo")
                                
                                .shadow(color: Color(red: 1.00, green: 0.00, blue: 0.20).opacity(0.2), radius: 10, x: 10, y: 10)
                                .shadow(color: Color(.white).opacity(0.7), radius: 10, x: -5, y: -5)
                                
                            
                                    
                                    
                                    
                                    
                        Text("Developer")
                                        .font(.title)
                                        .bold()
                            .foregroundColor(Color(red: 1.00, green: 0.00, blue: 0.20).opacity(1))
                                        .shadow(color: Color(red: 1.00, green: 0.00, blue: 0.20).opacity(0.1), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        }
                        
                )
                
                
            }
            
            
            
            
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct NeumorphismView02_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismView02()
    }
}
