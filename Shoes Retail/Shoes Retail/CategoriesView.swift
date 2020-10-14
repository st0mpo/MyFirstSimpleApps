import SwiftUI

struct CategoriesView: View {
    
    @State private var text = ""
    let categories = ["Nike", "Adidas", "Puma", "Balenciaga", "Converse"]
    
    let layout = [GridItem(.adaptive(minimum: 180))]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                SearchTextFieldView(text: $text)
                HeaderView(label: "Categories")
                CattegoriesButtonView(categories: categories)
                GridView(layout: layout)
                
            }
            .navigationBarItems(leading: NavigationBarItemView(image: "line.horizontal.3"), trailing: NavigationBarItemView(image: "person.crop.circle"))
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
