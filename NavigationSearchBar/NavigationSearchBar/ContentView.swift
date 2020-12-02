//
//  ContentView.swift
//  NavigationSearchBar
//
//  Created by Alexandr Istomin on 02.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var filteredItems = apps
    
    var body: some View {
        CustomNavigationView(view: AnyView(Home(filteredItems: $filteredItems)), placeHolder: "Apps, Games", largeTitle: true, title: "Apps", onSearch: { (txt) in
            
            if txt != ""{
                self.filteredItems = apps.filter{$0.name.lowercased().contains(txt.lowercased())}
            } else {
                self.filteredItems = apps
            }
            
        }, onCancel: {
            self.filteredItems = apps
        })
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
