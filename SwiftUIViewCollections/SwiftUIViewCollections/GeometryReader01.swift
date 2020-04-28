//
//  GeometryReader.swift
//  SwiftUIViewCollections
//
//  Created by RANGA REDDY NUKALA on 27/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct GeometryReader01: View {
    var body: some View {
        
        
        
        
        
        ZStack(alignment: .top) {
            
            
            Color(#colorLiteral(red: 0.8826572299, green: 0.8818365932, blue: 0.9209513664, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            
            
            GeometryReader { geometry in
                
                Image("Location")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height/1.5, alignment: .bottom)
                    
                    .overlay(Text("Travelopedia")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color(red: 1.00, green: 0.00, blue: 0.20))
                        .padding()
                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 10, y: 10)
                        .shadow(color: Color(red: 1.00, green: 0.00, blue: 0.20).opacity(0), radius: 20, x: -10, y: -10)
                        ,alignment: .top)
                    .background(
                        RoundedRectangle(cornerRadius: geometry.size.width/5,style: .continuous)
                            .fill(Color.offWhite).edgesIgnoringSafeArea(.bottom)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5))
                    
                    .offset(x: 0, y: 0)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.title)
                                .foregroundColor(Color(#colorLiteral(red: 0.607788384, green: 0.6078782678, blue: 0.6077687144, alpha: 1)))
                                .frame(width: 44, height: 44)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                                .padding(.leading, 10)
                            
                            
                            TextField("your email".uppercased(), text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.607788384, green: 0.6078782678, blue: 0.6077687144, alpha: 1)))
                                .font(.subheadline)
                                .frame(height:44)
                            
                            
                        }
                        
                        Divider().padding(.leading, 80)
                        
                        HStack {
                            Image(systemName: "lock.circle.fill")
                                .font(.title)
                                .foregroundColor(Color(#colorLiteral(red: 0.607788384, green: 0.6078782678, blue: 0.6077687144, alpha: 1)))
                                .frame(width: 44, height: 44)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                                .padding(.leading, 10)
                            
                            
                            SecureField("password".uppercased(), text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.607788384, green: 0.6078782678, blue: 0.6077687144, alpha: 1)))
                                .font(.subheadline)
                                .frame(height:44)
                            
                            
                            
                        }
                        
                        
                    }.padding()
                    
                    
                }.frame(height: 136)
                    .foregroundColor(Color.offWhite)
                    .clipShape(RoundedRectangle(cornerRadius: 30,style: .continuous))
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    
                    .offset(y: geometry.size.height/1.6)
                    .padding(.horizontal,20)
                
                
                HStack {
                    
                    Text("Forgot Password?")
                        .font(.subheadline)
                    
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Log in").foregroundColor(.white)
                    }.padding(12)
                        .padding(.horizontal,30)
                        .background(Color(#colorLiteral(red: 0.607788384, green: 0.6078782678, blue: 0.6077687144, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.607788384, green: 0.6078782678, blue: 0.6077687144, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
                    
                    
                    
                }.padding(.horizontal, 20)
                    .offset(y: geometry.size.height/1.1)
                
                
            }
            
        }
        
    }
}

struct GeometryReader01_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader01()
    }
}
