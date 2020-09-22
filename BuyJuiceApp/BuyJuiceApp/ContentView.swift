//
//  ContentView.swift
//  BuyJuiceApp
//
//  Created by Александр Истомин on 21.09.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    
    @State private var count = 0
    
    var body: some View {
        ZStack {
            
            Color("Color")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                Image(uiImage: #imageLiteral(resourceName: "orange_juice"))
                    .resizable()

                
                ZStack(alignment: .topTrailing) {
                    VStack {
                        HStack {
                            Text("Orange Juice")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                        }.padding(.top, 25)
                        
                        HStack{
                            VStack(alignment: .leading, spacing: 15){
                                Text("Fresh Drink")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                HStack {
                                    Image(systemName: "star")
                                    Text("4.5")
                                }.foregroundColor(.gray)
                                
                                HStack{
                                    Image(systemName: "stopwatch")
                                    Text("5 Minutes")
                                }.foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        .padding(.top)
                        
                        HStack(spacing: 18) {
                            VStack {
                                Text("30%")
                                Text("Sweet")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 4)
                            
                            VStack {
                                Text("30%")
                                Text("Fruit")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 4)
                            
                            
                            VStack {
                                Text("40%")
                                Text("Water")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 4)
                        }
                        .padding(.top)
                        
                        Text("Options")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color"))
                            .padding(.top)
                        
                        HStack(spacing: 18) {
                            
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Text("Basic")
                                    
                                }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                            } .foregroundColor(.black)
                            
                            
                           
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Text("Pepper Toppings")
                                    
                                }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                            } .foregroundColor(.black)
                            
                            
                        }
                        .padding(.top)
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "info")
                                .foregroundColor(.black)
                                .padding()
                        }
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 4)
                        .padding(.top)
                        
                    }
                    .padding(.bottom, 40)
                    .padding(.horizontal, 20)
                    .background(CustomShape().fill(Color.white))
                    .clipShape(Corners())
                    
                    VStack(spacing: 15) {
                        
                        Button(action: {
                            self.count += 1
                        }) {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.gray)
                                .font(.title)
                        }
                        
                        Text("\(self.count)")
                            .foregroundColor(.yellow)
                            .padding(10)
                            .background(Color.black)
                            .clipShape(Circle())
                        
                        Button(action: {
                            if self.count != 0 {
                                self.count -= 1
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.gray)
                                .font(.title)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4)
                    .padding(.trailing, 25)
                    .offset(y: -55)
                }
                .zIndex(40)
                .offset(y: -40)
                .padding(.bottom, -40)

                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Total Order")
                            .fontWeight(.bold)
                    
                        HStack(spacing: 18) {
                            VStack(spacing: 8) {
                                
                                Text("\(self.count)")
                                    .fontWeight(.bold)
                                
                                Text("Total Order")
                            }
                            
                            VStack(spacing: 8) {
                                
                                Text("$\(self.count * 75)")
                                    .fontWeight(.bold)
                                
                                Text("Total Price")
                            }
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        VStack {
                            Text("Pay")
                                .fontWeight(.bold)
                            
                            Text("Now")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 25)
                        .background(Color.yellow)
                        .cornerRadius(15)
                        .shadow(radius: 4)
                    }
                    .padding(.trailing, 25)
                    .offset(y: -55)
                }
                .zIndex(40)
                .padding(.bottom, 10)
            }
            .edgesIgnoringSafeArea(.top)
            .animation(.default)
        }
    }
}

struct CustomShape : Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 40))
    }
}
}

struct Corners : Shape {
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}


