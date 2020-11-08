import SwiftUI

struct TopMenu: View {
    
    @State var index = 0
    
    var body: some View {
        HStack(spacing: 30){
            
            ForEach(0..<topMenu.count, id: \.self) { menu in
                Text(topMenu[menu])
                    .font(.system(size: 22))
                    .fontWeight(index == menu ? .bold : .none)
            }
            
        }
    }
}

struct TopMenu_Previews: PreviewProvider {
    static var previews: some View {
        TopMenu()
    }
}
