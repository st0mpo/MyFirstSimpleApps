//
//  TabBar.swift
//  FurnitureShop
//
//  Created by Alexandr Istomin on 03.12.2020.
//

import SwiftUI

struct TabBar: View {
    
    @State var current = "Home"
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
            TabView(selection: $current) {
                Text("Home")
                    .tag("Home")
                
                Text("Messages")
                    .tag("Messages")
                
                Text("Account")
                    .tag("Account")
            }
            
            HStack(spacing: 0) {
                
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
