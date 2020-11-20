//
//  TextInfoView.swift
//  Fresh Market
//
//  Created by Александр Истомин on 08.11.2020.
//

import SwiftUI

struct TextInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Stay home & get\nyour daily needs")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .fixedSize()
                            
            Text("Start shopping today!")
                .font(.caption)
                .foregroundColor(.white)
                .padding(.top, 4)
            
            Button(action: {
                //
            }) {
                HStack {
                    Text("Order now")
                    Image(systemName: "arrow.right")
                }
                .font(.callout)
                .foregroundColor(.black)
                .padding(.vertical, 6)
                .padding(.horizontal)
                .background(Color(.white))
                .cornerRadius(6)
                
                
            }.padding(.vertical)
        }
        .padding(24)
    }
}

struct TextInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TextInfoView()
    }
}
