//
//  DetailView.swift
//  KidsApp
//
//  Created by Александр Истомин on 12.10.2020.
//

import SwiftUI

struct DetailView: View {
    
    
    @Environment(\.presentationMode) var present
    
    var body: some View {
        VStack {
            
            HStack {
                
                Button(action: {present.wrappedValue.dismiss()}) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.black.opacity(0.6))
                }
                
                Spacer(minLength: 0)
                
            }
            .padding([.horizontal, .top])
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Party Donat")
                    .font(.system(size: 45, weight: .heavy))
                    .foregroundColor(Color("Color3"))
                
                Text("38$")
                    .font(.system(size: 35, weight: .heavy))
                    .foregroundColor(Color.black.opacity(0.6))
            }
            .padding(.top)
            
            VStack {
                
                HStack(alignment: .top, spacing: 20) {
                    
                    VStack(alignment: .leading, spacing: 10){
                        Image("doll")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                        
                        Text("Available to order")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.6))
                            .frame(height: 50)
                        
                        Text("129")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color("Color3"))
                            .cornerRadius(10)
                    }
                    Image("donot")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width / 2)
                        .offset(y: -20)
                        .padding(.top, -25)
                }
                
                Text("White tablecover features donuts decorated with bright pastel and chocolate frosting and topped with a rainbow of sprinkels.Look for donut time party decoarions, Photo booth props, poper plates, paper napkins and coordinating solids Candy pink and bermuda Blue.")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black.opacity(0.6))
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                
                Spacer(minLength: 0)
                
                HStack(spacing: 20) {
                    
                    Button(action: {}) {
                        Image(systemName: "suit.heart.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("Color3"))
                            .clipShape(Circle())
                    }
                    
                    Button(action: {}) {
                        
                        HStack(spacing: 10) {
                            
                            Text("Go to order donut")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 18, weight: .heavy))
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(Color("Color3"))
                        .clipShape(Capsule())
                    }
                }
            }
            .padding()
            .background(
                Color("pink")
                    .clipShape(CustomShape())
            )
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
