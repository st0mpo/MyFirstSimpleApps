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
    @State var loadingContent = false
    @State var selectedColor : Color = Color("p1")
    
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
            .padding()
            
            VStack(spacing: 10) {
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "image\(selectedItem.id)", in: animation)
                    .padding()
                
                Text(selectedItem.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Text(selectedItem.subTitle)
                    .foregroundColor(.gray)
                    .padding(.top, 4)
                
                
                HStack {
                    Text(selectedItem.rating)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "rating\(selectedItem.id)", in: animation)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "suit.heart")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    .matchedGeometryEffect(id: "heart\(selectedItem.id)", in: animation)
                }
                .padding()
            }
            .padding(.top, 35)
            .background(
                Color(selectedItem.image)
                    .clipShape(CustomShape())
                    .matchedGeometryEffect(id: "color\(selectedItem.id)", in: animation)
            )
            .cornerRadius(15)
            .padding()
            
            
            VStack {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Exclusive Offer")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                    Text("Frame + Lens for $35(its 50% off)")
                        .foregroundColor(.gray)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                .background(Color("p3"))
                .cornerRadius(15)
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Color")
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    HStack(spacing: 15) {
                        
                        ForEach(1...4, id:\.self){ i in
                            ZStack {
                                Color("p\(i)")
                                    .clipShape(Circle())
                                    .frame(width: 45, height: 45)
                                    .onTapGesture {
                                        withAnimation{
                                        selectedColor = Color("p\(i)")
                                        }
                                    }
                                
                                if selectedColor == Color("p\(i)") {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        Spacer(minLength: 0)
                    }
                }
                .padding()
                
                Spacer(minLength: 15)
                
                HStack {
                    VStack {
                        Button(action: {}) {
                            Text("TRY FRAME IN 3D")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 100)
                                .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 1)
                                )
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("ADD TO CART")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 100)
                                .background(Color.black)
                                .cornerRadius(15)
                        }
                        .padding(.vertical)
                    }
                    
                }
                
            }
            .padding([.horizontal, .bottom])
            .frame(width: loadingContent ? nil : 0)
            .opacity(loadingContent ? 1 : 0)
            
            Spacer(minLength: 0)
    }
    
        .onAppear {
            withAnimation(Animation.spring().delay(0.45)) {
                loadingContent.toggle()
            }
        }
}
}


//struct Detail_Previews: PreviewProvider {
//    static var previews: some View {
//        Detail()
//    }
//}
