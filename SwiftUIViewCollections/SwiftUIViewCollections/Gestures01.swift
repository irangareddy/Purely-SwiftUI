//
//  Gestures01.swift
//  SwiftUIViewCollections
//
//  Created by RANGA REDDY NUKALA on 30/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct Gestures01: View {
    @State private var currentAmount: Angle = .degrees(0)
    @State private var xv: CGFloat = 0.0
    @State private var yv: CGFloat = 0.0
    @State private var zv: CGFloat = 0.0
    @State private var mainText: String = "Credit Card"
    @State private var sideText: String = "VISA"
    @State private var cardNo: String = "1234 5678 9012 3456"
    @State private var chip: String = "chip"
    
    var body: some View {
        
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill()
                .frame(width: 300, height: 200, alignment: .center)
                .overlay(
                    Image("Background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 200, alignment: .bottom)
                        .opacity(0.6)
                        .rotation3DEffect(currentAmount, axis: (x: xv, y: yv, z: zv))
                        )
                .overlay(
                    
                    VStack(spacing:0) {
                        HStack {
                            Text(mainText)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image(systemName: "dot.radiowaves.right")
                                .font(.largeTitle)
                                .frame(width: 30, height: 44, alignment: .center)
                                .foregroundColor(.white)
                        }.padding(.top)
                        .padding()
                        
                        HStack(spacing: 40) {
                            
                            
                            Image(chip)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 44, height: 44, alignment: .center)
                            
                            
                            
                            Text(cardNo)
                                .bold()
                                .foregroundColor(.white)
                            
                            
                        }.padding(0)
                        
                      
                        HStack(spacing: 0) {
                            
                            VStack(alignment: .leading) {
                                Text("CARD HOLDER")
                                    .font(.caption)
                                .foregroundColor(.white)
                                Text("Ranga Reddy")
                                .bold()
                                .foregroundColor(.white)
                            }
                            
                            Spacer()
                            
                            Image("visa3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 44, height: 44, alignment: .center)
                            
                            
                        }.padding(.bottom)
                        .padding()
                        
                    }.frame(width: 300, height: 200, alignment: .center)
                        .rotation3DEffect(currentAmount, axis: (x: xv, y: yv, z: zv))
                    
                    
                    
                    
                    
            )
                
                
                
                .rotation3DEffect(currentAmount, axis: (x: xv, y: yv, z: zv))
                .onTapGesture {
                    withAnimation(.spring()) {
                        
                        self.currentAmount = .degrees(180)
                        
                        self.xv = 180.0
                        
                        self.yv = 0.0
                        
                        self.zv = 0.0
                        
                        self.mainText = "Back Side"
                        
                        self.sideText = "VISA"
                        
                        DispatchQueue.main.async {
                            self.cardNo = "123"
                        }
                    }
                    
            }
            
        }
        
    }
    
}

//struct Gestures01: View {
//
//    var body: some View {
//        RoundedRectangle(cornerRadius: 20,style: .continuous)
//        .fill(LinearGradient(Color.yellow,Color.red))
//        .frame(width: 300, height: 200)
//
//        .onLongPressGesture {
//
//        }
//
//    }
//}

struct Gestures01_Previews: PreviewProvider {
    static var previews: some View {
        Gestures01()
        
    }
}


//.fill(LinearGradient(Color(red: 0.01, green: 0.35, blue: 0.65),Color(red: 0.30, green: 0.73, blue: 0.73)))
