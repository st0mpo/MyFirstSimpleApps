import SwiftUI

struct TextInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                .lineLimit(nil)
                .padding(.bottom)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
        }
        .frame(width: UIScreen.main.bounds.width / 1.8)
        //            .frame(maxWidth: .infinity)
    }
}

struct TextInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TextInfoView()
    }
}
