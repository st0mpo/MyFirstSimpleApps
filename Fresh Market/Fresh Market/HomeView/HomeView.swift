//
//  HomeView.swift
//  Fresh Market
//
//  Created by Александр Истомин on 08.11.2020.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isFullScreen = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                NavigationLink(
                    destination: DetailView(isFullScreen: $isFullScreen),
                    label: {
                        HeaderView()
                    })
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(foods, id: \.label) { food in
                            VStack {
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color(.systemGreen))
                                    .overlay(Text(food.image)
                                                .font(.largeTitle)
                                                .offset(x: -3, y: 6)
                                    )
                                    .padding(.horizontal)
                                    .padding(.bottom, 4)
                                
                                Text(food.label)
                            }
                        }
                    }
                }
                
                HStack {
                    Text("Popular Products")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("View All")
                                .foregroundColor(.green)
                        })
                }
                .padding()
                
                ForEach(0 ..< 5) { item in
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            RowView()
                        })
                }
                
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: LogoView(), trailing: SearchButtonView())
            .navigationBarHidden(isFullScreen)
        }
    }
}

struct LogoView : View {
    var body: some View {
        HStack {
            Text("Fresh")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.green)
            Text("Market")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(.label))
        }
    }
}

struct  SearchButtonView : View {
    var body: some View {
        Button(action: {
            
        }) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(.label))
        }
    }
}

struct FoodType {
    let image: String
    let label: String
}

let foods = [
    FoodType(image: "🍏", label: "Apple"),
    FoodType(image: "🍓", label: "Strawberry"),
    FoodType(image: "🍋", label: "Lemon"),
    FoodType(image: "🍌", label: "Banana"),
    FoodType(image: "🍉", label: "Watermelon"),
    FoodType(image: "🍇", label: "Grapes"),
    FoodType(image: "🍒", label: "Cherry"),
    FoodType(image: "🍑", label: "Peach"),
    FoodType(image: "🍍", label: "Pineapple")
]

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



