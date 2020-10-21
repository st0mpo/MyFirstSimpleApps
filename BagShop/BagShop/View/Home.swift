//
//  Home.swift
//  BagShop
//
//  Created by Александр Истомин on 21.10.2020.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(spacing: 0) {
            
            ZStack {
                HStack(spacing: 15) {
                    
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                        
                        Button(action: {}) {
                            Image(systemName: "cart")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                        Circle()
                            .fill(Color.red)
                            .frame(width: 15, height: 15)
                            .offset(x: 5, y: -10)
                    })
                }
                
                Text("Shop")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
            }
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
           
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack {
                    
                    HStack {
                        
                        Text("Women")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        ForEach(scroll_Tabs, id:\ .self){ tab in
                            
                        }
                    })
                }
                
            })
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
