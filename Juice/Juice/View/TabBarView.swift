//
//  TabBarView.swift
//  Juice
//
//  Created by Alexandr Istomin on 29.11.2020.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject var tabData = TabViewModel()
    @Namespace var animation
    
    var body: some View {
        ZStack{
            TabView {
                Home(tabData: tabData, animation: animation)
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                
                Text("Likes")
                    .tabItem {
                        Image(systemName: "heart")
                    }
                
                Text("Settings")
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .accentColor(.black)
            
            if tabData.isDetail {
                Detail(tabData: tabData, animation: animation)
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
