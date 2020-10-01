//
//  SearchTextFieldView.swift
//  Find My Job
//
//  Created by Александр Истомин on 25.04.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct SearchTextFieldView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        TextField("Search Jobs", text: $search)
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .padding()
            .overlay(SearchIconView())
            .padding(.vertical)
    }
}

struct SearchTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextFieldView()
    }
}

struct SearchIconView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "magnifyingglass")
            .padding()
        }.padding(.trailing)
    }
}
