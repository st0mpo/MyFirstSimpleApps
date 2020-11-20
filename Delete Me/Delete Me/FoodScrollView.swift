import SwiftUI

struct FoodScrollView: View {
    
    @State private var isSelected = 0
    @Namespace private var nameSpace
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(foods, id: \.self) { food in
                    VStack {
                        Text(food.image)
                            .font(.system(size: 42))
                        Text(food.label)
                            .font(.callout)
                            .fontWeight(.bold)
                            .fixedSize()
                        
                        if isSelected == food.id {
                            Rectangle()
                                .frame(height: 4)
                                .matchedGeometryEffect(id: "foodBar", in: nameSpace)
                        }
                    }
                    
                    .padding()
                    .opacity(isSelected == food.id ? 100 : 0.5)
                    .onTapGesture{
                        withAnimation {
                            isSelected = food.id
                        }
                    }
                }
            }
        }
    }
}

struct FoodScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FoodScrollView()
    }
}
