//
//  HeaderView.swift
//  Top Cities
//
//  Created by Александр Истомин on 25.02.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            
            Text("Hello, World!")
                .font(.title)
                .fontWeight(.bold)
            
            
            Spacer()
            
            NavigationLink(destination: Text("Coming soon")) {
                Text("See all")
                    .bold()
                    .foregroundColor(Color(.label))
            }
        }.padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
