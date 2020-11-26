//
//  Detail.swift
//  Specs
//
//  Created by Alexandr Istomin on 26.11.2020.
//

import SwiftUI

struct Detail: View {
    @Binding var selectedItem : Item
    @Binding var show : Bool
    var animation : Namespace.ID
    
    var body: some View {
        VStack {
            HStack(spacing: 25) {
                
                Button(action: {
                    withAnimation(.spring()){show.toggle()}
                }) {
                    Image(systemName: "chevron.backward")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {
                    //
                }) {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                }
                    
                    Button(action: {
                        //
                    }) {
                        Image(systemName: "bag")
                            .font(.title)
                            .foregroundColor(.black)
            }
            .padding()
        }
            
            Image(selectedItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
    }
}
}


//struct Detail_Previews: PreviewProvider {
//    static var previews: some View {
//        Detail()
//    }
//}
