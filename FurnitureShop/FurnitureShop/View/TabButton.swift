//
//  TabButton.swift
//  FurnitureShop
//
//  Created by Alexandr Istomin on 03.12.2020.
//

import SwiftUI

struct TabButton: View {
    
    var title : String
    var image : String
    @Binding var selected : String
    
    var body: some View {
        Button(action: {

            withAnimation(.spring()) {selected = title}

        }) {
            
            HStack(spacing: 10) {
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                
                if selected == title {
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.white.opacity(selected == title ? 0.08 : 0))
            .clipShape(Capsule())
        }
    }
}

//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton()
//    }
//}
