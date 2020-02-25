//
//  ContentView.swift
//  Top Cities
//
//  Created by Александр Истомин on 25.02.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                HeaderView()
                CardView()
            }
            .navigationBarTitle("Top Cities App")
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



