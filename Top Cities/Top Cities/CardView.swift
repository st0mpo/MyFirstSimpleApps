//
//  CardView.swift
//  Top Cities
//
//  Created by Александр Истомин on 25.02.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                
                
                .frame(height: 100)
                .foregroundColor(Color(.systemBackground))
                .shadow(color: Color.black.opacity(0.4), radius: 6, x: 0, y: 0)
            
            
            HStack {
                Image("road")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                
                VStack(alignment: .leading) {
                    Text("Some Image Card")
                        .bold()
                    Text("From $420")
                }
                    
                    
                .padding(.leading)
                
                Spacer()
                
                HStack {
                    Text("5.0")
                        .bold()
                    Image(systemName: "star.fill")
                }
                .foregroundColor(Color.yellow)
                
            }
            .padding(.horizontal)
        }
        .padding()
    }
}




struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
