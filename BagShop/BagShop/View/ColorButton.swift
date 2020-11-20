//
//  ColorButton.swift
//  BagShop
//
//  Created by Александр Истомин on 23.10.2020.
//

import SwiftUI

struct ColorButton: View {
    
    var color : Color
    @Binding var seleсtedColor : Color
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: 20, height: 20)
            
            Circle()
                .stroke(Color.black.opacity(seleсtedColor == color ? 1 : 0), lineWidth: 1)
                .frame(width: 30, height: 30)
        }
        .onTapGesture {
            withAnimation{seleсtedColor = color}
        }
    }
}

//struct ColorButton_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorButton()
//    }
//}
