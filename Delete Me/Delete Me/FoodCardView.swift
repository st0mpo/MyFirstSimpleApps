//
//  FoodCardView.swift
//  Delete Me
//
//  Created by Alexandr Istomin on 20.11.2020.
//

import SwiftUI

struct FoodCardView: View {
    
    let grid = [
        GridItem(.fixed(160)),
        GridItem(.fixed(160))
    ]
    
    var body: some View {
        LazyVGrid(columns: grid, spacing: 16) {
            ForEach(0 ..< 6) { _ in
                VStack(spacing: 2) {
                    ZStack(alignment: .top) {
                        Text("🍩")
                            .font(.system(size: 72))
                            .padding()
                        
                        HStack {
                            Spacer()
                            ZStack {
                                RoundedRectangle(cornerRadius: 18)
                                    .foregroundColor(.blue)
                                    .opacity(0.6)
                                    .frame(width: 70, height: 50)
                                    .offset(x: 12, y: -16)
                                
                                Text("$12")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                    .offset(x: 2, y: -6)
                            }
                        }
                        
                    }
                    
                    Text("Vanilla Sprinkle")
                        .fontWeight(.bold)
                        .foregroundColor(Color(.label))
                    
                    Text("Yum!")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.top, 0.4)
                    
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "suit.heart")
                                .foregroundColor(Color(.label))
                                .font(.headline)
                                .padding()
                        }
                        
                        Spacer()
                        
                        Text("2.7")
                            .fontWeight(.bold)
                            }.padding(.horizontal)
                }
                .background(Color(.secondarySystemBackground))
                .cornerRadius(25)
                .padding(.horizontal, 8)
            }
            
        }
    }
}

struct FoodCardView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardView()
    }
}
