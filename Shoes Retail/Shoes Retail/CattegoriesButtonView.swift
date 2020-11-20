import SwiftUI

struct CattegoriesButtonView: View {
    
    let categories : [String]
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { category in
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(category)
                        .fontWeight(category == categories.first ? .bold : .regular)
                        .padding(.horizontal, 6)
                        .foregroundColor(category == categories.first ? Color(.label) : .secondary)
                })
            }
        }
    }
}

struct CattegoriesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CattegoriesButtonView(categories: ["Nike", "Adidas", "Puma", "Balenciaga", "Converse"])
    }
}
