//
//  TabButton.swift
//  BagShop
//
//  Created by Александр Истомин on 21.10.2020.
//

import SwiftUI

struct TabButton: View {
    
    var title : String
    @Binding var selectedTab : String
    
    var body: some View {
        Button(action: {
            
            withAnimation(.spring()){ selectedTab = title}
            
        }) {
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .fontWeight(.heavy)
                    .foregroundColor(selectedTab == title ? .black : .gray)
                
                Capsule()
                    .fill(Color.black)
                    .frame(width: 40, height: 4)
            })
            .frame(width: 100)
        }
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton(title: <#T##String#>, selectedTab: <#T##Binding<String>#>)
    }
}
