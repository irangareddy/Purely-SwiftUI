//
//  LoginView.swift
//  SwiftUIViewCollections
//
//  Created by RANGA REDDY NUKALA on 27/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ZStack(alignment: .top) {
                
                Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)).clipShape(RoundedRectangle(cornerRadius: 30,style: .continuous)).edgesIgnoringSafeArea(.bottom)
                
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
