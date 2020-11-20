import SwiftUI

struct SideMenuView: View {
    
    @Binding var isSideMenuShowing : Bool
    
    var body: some View {
        VStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Label("Label", systemImage: "42.circle")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .onTapGesture {
                        isSideMenuShowing.toggle()
                    }
            }
            
            Spacer()
        }
        .padding(.top, 44)
        .frame(width: 200, height: UIScreen.main.bounds.height - 100)
        .background(Color(.systemBackground))
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isSideMenuShowing: Binding.constant(true))
    }
}
