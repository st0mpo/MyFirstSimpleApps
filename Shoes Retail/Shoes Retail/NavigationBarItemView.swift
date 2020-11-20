import SwiftUI

struct NavigationBarItemView: View {
    let image: String
    @Binding var isSideMenuShowing : Bool
    @Binding var isAccountViewShowing : Bool
    
    
    var body: some View {
        Button(action: { showOrHideView() }, label: {
           Image(systemName: image)
            .font(.title)
            .foregroundColor(Color(.label))
        })
    }
    func showOrHideView() {
        if image == "person.crop.circle" {
            isAccountViewShowing.toggle()
        } else {
            isSideMenuShowing.toggle()
        }
    }
}

struct NavigationBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemView(image: "person.crop.circle",
                              isAccountViewShowing: Binding.constant(true),
                              isSideMenuShowing: Binding.constant(true))
    }
}
