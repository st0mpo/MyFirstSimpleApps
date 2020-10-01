import SwiftUI

struct TopInfoView: View {
    
    @Binding var isShowing : Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            TopLogoView()
            HeaderView()
            TextAndImageInfoView()
            VButtons(isShowing: $isShowing)
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color(.systemBackground), Color(.systemGray4)]), startPoint: .top, endPoint: .bottom))
        .listRowInsets(EdgeInsets())
        
    }
}

//struct TopInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopInfoView()
//    }
//}
