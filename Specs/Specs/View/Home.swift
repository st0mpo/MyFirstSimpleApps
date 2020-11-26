//
//  Home.swift
//  Specs
//
//  Created by Alexandr Istomin on 25.11.2020.
//

import SwiftUI

struct Home: View {
    
    
    @State var selected = tabs[0]
    @Namespace var animation
    
    @State var show = false
    @State var selectedItem : Item = items[0]
    
    var body: some View {
        
        ZStack {
            VStack {
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(.black)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 45, height: 45)
                            .cornerRadius(15)
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                
                ScrollView {
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Lets")
                                    .font(.title)
                                    .foregroundColor(.gray)
                                
                                Text("Get Started")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                            .padding(.horizontal)
                            
                            Spacer(minLength: 0)
                        }
                        
                        HStack(spacing: 0) {
                            
                            ForEach(tabs, id: \.self) { tab in
                                TabButton(title: tab, selected: $selected, animation: animation)
                                
                                if tabs.last != tab {Spacer(minLength: 0) }
                            }
                        }
                        .padding()
                        .padding(.top, 5)
                        
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25) {
                            
                            ForEach(items) { item in
                                CardView(item: item, animation: animation)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            selectedItem = item
                                            show.toggle()
                                        }
                                    }
                            }
                        }
                        .padding()
                    }
                }
                Spacer(minLength: 0)
            }
            .opacity(show ? 0 : 1)
            
            if show {
                Detail(selectedItem: $selectedItem, show: $show, animation: animation)
            }
        }
        .background(Color.white.ignoresSafeArea())
    }
}


var tabs = ["Glases", "Watched", "Shoes", "Perfume"]


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
