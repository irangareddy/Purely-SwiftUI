//
//  TabBarView.swift
//  SwiftUIViewCollections
//
//  Created by RANGA REDDY NUKALA on 26/04/20.
//  Copyright © 2020 RANGA REDDY NUKALA. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 0.20, green: 0.24, blue: 0.87, alpha: 1.00)
//        UITabBar.appearance().backgroundImage = UIImage()
        //UITabBar.appearance().isTranslucent = false
        //UITabBar.appearance().shadowImage = UIImage()

    }
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house.fill")
                    .font(.system(size: 25))
                Text("Home")
               
            }.tag(1)
            
            SearchView().tabItem {
                 Image(systemName: "magnifyingglass")
                 .font(.system(size: 25))
                Text("Search")
            }.tag(2)
           CartView().tabItem {
                 Image(systemName: "cart.fill")
                     .font(.system(size: 25))
                Text("Cart")
            }.tag(3)
            ProfileView().tabItem {
                 Image(systemName: "person.fill")
                .font(.system(size: 25))
                Text("Profile")
            }.tag(4)
        }.accentColor(Color(red: 0.14, green: 0.22, blue: 0.30))
            .edgesIgnoringSafeArea(.top)
            
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

struct HomeView: View {
    var body: some View {
        
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color(red: 0.14, green: 0.22, blue: 0.30))
            .clipShape(Circle())
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.1), lineWidth: 30))
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.2), lineWidth: 60))
                .padding(60)
            Image(systemName: "house.fill")
                .font(.largeTitle)
            .foregroundColor(.white)
        }
        
    }
}

struct SearchView: View {
    var body: some View {
        
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color(red: 0.14, green: 0.22, blue: 0.30))
            .clipShape(Circle())
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.1), lineWidth: 30))
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.2), lineWidth: 60))
                .padding(60)
            Image(systemName: "magnifyingglass")
                .font(.largeTitle)
            .foregroundColor(.white)
        }
        
    }
}

struct CartView: View {
    var body: some View {
        
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color(red: 0.14, green: 0.22, blue: 0.30))
            .clipShape(Circle())
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.1), lineWidth: 30))
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.2), lineWidth: 60))
                .padding(60)
            Image(systemName: "cart.fill")
                .font(.largeTitle)
            .foregroundColor(.white)
        }
        
    }
}

struct ProfileView: View {
    var body: some View {
        
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color(red: 0.14, green: 0.22, blue: 0.30))
            .clipShape(Circle())
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.1), lineWidth: 30))
                .overlay(Circle().stroke(Color(red: 0.20, green: 0.24, blue: 0.87).opacity(0.2), lineWidth: 60))
                .padding(60)
            Image(systemName: "person.fill")
                .font(.largeTitle)
            .foregroundColor(.white)
        }
        
    }
}

