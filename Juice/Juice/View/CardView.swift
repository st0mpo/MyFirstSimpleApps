//
//  CardView.swift
//  Juice
//
//  Created by Alexandr Istomin on 29.11.2020.
//

import SwiftUI

struct CardView: View {
    var item : Item
    @ObservedObject var tabData : TabViewModel
    var animation : Namespace.ID
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 10) {
                Text(item.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text(item.price)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                        tabData.selectedItem = item
                        tabData.isDetail.toggle()
                    }
                    
                }) {
                    Text("Buy Now")
                        .fontWeight(.heavy)
                        .foregroundColor(Color(item.image))
                        .padding(.vertical)
                        .padding(.horizontal, 25)
                        .background(Color.white)
                        .cornerRadius(15)
                }
                .padding()
            }
            .padding(.leading, 10)
            .offset(y: 27)
            
            Spacer(minLength: 0)
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: item.image, in: animation)
                .frame(height: UIScreen.main.bounds.height / 3)
                
        }
        .padding()
        .background(
            Color(item.image)
                .cornerRadius(25)
                .padding(.top, 55)
        )
        
    }
}


//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
