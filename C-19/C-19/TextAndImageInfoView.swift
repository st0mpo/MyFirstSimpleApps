import SwiftUI

struct TextAndImageInfoView: View {
    var body: some View {
        HStack {
            TextInfoView()
            
            Spacer()
            
            Image(systemName: "bandage.fill")
            .padding()
        }
    }
}

struct TextAndImageInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImageInfoView()
    }
}
