import SwiftUI

struct TopLogoView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 38)
            
            Rectangle()
                .frame(width: 2, height: 50)
            
            Circle()
                .frame(width: 38)
            
            Spacer()
        }
        .padding(.vertical, -44)
    }
}

struct TopLogoView_Previews: PreviewProvider {
    static var previews: some View {
        TopLogoView()
    }
}
