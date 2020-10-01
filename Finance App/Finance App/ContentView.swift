//
//  ContentView.swift
//  Finance App
//
//  Created by Александр Истомин on 23.01.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScrollView(.vertical) {
                TopView()
                BalanceView()
                HButtonsView()
                BarChartView()
                ExpensesView()
                
            }.tabItem {
                Image(systemName: "creditcard.fill")
                Text("Home")
            }.tag(1)
            
            Text("Tab Content 2").tabItem {
                Image(systemName: "signature")
                Text("Something")
            }.tag(2)
        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TopView: View {
    var body: some View {
        HStack {
            Text("Expenses")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
            
            Button(action: {
                //
            }) {
                Image(systemName: "plus")
                Text("Add")
            }
            .font(Font.body.weight(.black))
            .accentColor(.white)
            .padding(.vertical, 6)
            .padding(.horizontal)
            .background(Color.blue)
        .clipShape(Capsule())
        }
    .padding()
    }
}

struct BalanceView: View {
    var body: some View {
        VStack {
            Text("Total Balance")
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            
            Text("$65.14")
                .font(.system(size: 60))
                .fontWeight(.black)
            
            Text("😨 4 days until expected income")
                .foregroundColor(Color.red)
        }
    }
}

struct ButtonOneView: View {
    var body: some View {
        HStack{
            Text("🍕 Eating out")
                .bold()
            Image(systemName: "chevron.down")
                .font(Font.body.bold())
        }
        .padding()
        .background(Color(.systemTeal).opacity(0.4))
        .clipShape(Capsule())
    }
}

struct ButtonTwoView: View {
    var body: some View {
  
            Image(systemName: "calendar")
                .font(Font.body.bold())
        .padding()
        .background(Color(.systemTeal).opacity(0.4))
        .clipShape(Circle())
    }
}

struct HButtonsView: View {
    var body: some View {
        HStack {
            ButtonOneView()
            Spacer()
            ButtonTwoView()
        }.padding()
    }
}


struct Bar: Hashable {
    let height: CGFloat
    let month: String
}

struct BarChartView: View {
    
    let bars = [Bar(height: 28, month: "Jan"), Bar(height: 88 , month: "Feb"), Bar(height: 12, month: "Mar"), Bar(height: 44, month: "Apr"), Bar(height: 20, month: "May"), Bar(height: 12, month: "Jun"), Bar(height: 87, month: "Jul"), Bar(height: 38, month: "Aug"), Bar(height: 12, month: "Sep"), Bar(height: 72, month: "Oct"), Bar(height: 50, month: "Nov"), Bar(height: 100, month: "Dec"),]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .bottom) {
                ForEach(bars, id: \.self) { bar in
                    VStack {
                        Rectangle()
                            .frame(width: 38, height: bar.height)
                            .cornerRadius(8)
                        
                        Text(bar.month)
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ExpensesView: View {
    var body: some View {
        VStack {
            HStack {
                Text("March 2020:")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("$5.156 🙀")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
            }
         
            
            HStack {
                Text("Details")
                .bold()
                    .foregroundColor(.secondary)
                    .padding(.vertical)
                Spacer()
                
            }
            
            ForEach(0 ..< 15) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text("Macbook Pro")
                            .fontWeight(.bold)
                        Text("03/12/20  11:00 AM")
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    Text("$2.399.00")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                }
            }
            
        }
        .cornerRadius(12)
        .padding([.top, .leading, .trailing])
        .background(Color(.secondarySystemBackground))
        .padding([.top, .leading, .trailing])
        
    }
}
