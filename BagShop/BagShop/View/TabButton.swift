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
    var animation : Namespace.ID
    
    var body: some View {
        Button(action: {
            
            withAnimation(.spring()){ selectedTab = title}
            
        }) {
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .fontWeight(.heavy)
                    .foregroundColor(selectedTab == title ? .black : .gray)
                
                if selectedTab == title {
                    Capsule()
                        .fill(Color.black)
                        .frame(width: 40, height: 4)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
            })
            .frame(width: 100)
        }
    }
}

//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton(title: "", selectedTab: <#T##Binding<String>#>)
//    }
//}
