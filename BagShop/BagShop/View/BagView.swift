//
//  BagView.swift
//  BagShop
//
//  Created by Александр Истомин on 22.10.2020.
//

import SwiftUI

struct BagView: View {
    
    var bagData : BagModel
    var animation : Namespace.ID
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                
                Color(bagData.image)
                    .cornerRadius(15)
                
                Image(bagData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
            }
            Text(bagData.title)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
                .matchedGeometryEffect(id: bagData.image, in: animation)
            
            Text(bagData.price)
                .fontWeight(.heavy)
                .foregroundColor(.black)
        }
    }
}

//struct BagView_Previews: PreviewProvider {
//    static var previews: some View {
//        BagView()
//    }
//}
