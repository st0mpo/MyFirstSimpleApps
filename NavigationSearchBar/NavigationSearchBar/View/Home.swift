//
//  Home.swift
//  NavigationSearchBar
//
//  Created by Alexandr Istomin on 02.12.2020.
//

import SwiftUI

struct Home: View {
    
    @Binding var filteredItems : [AppItem]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                ForEach(filteredItems){ item in
                    CardView(item: item)
                }
            }
            .padding()
        }
    }
}

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
