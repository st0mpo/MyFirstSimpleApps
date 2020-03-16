import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ZStack {
            
            Circle()
                .frame(width: 44, height: 44)
                .foregroundColor(Color(.systemBackground))
                .shadow(color: Color.black.opacity(0.4), radius: 6, x: 0, y: 0)
            
            
            Image(systemName: "heart.fill")
                .font(.system(size: 28))
                .foregroundColor(.pink)
        }
        .padding(.trailing)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
            .previewLayout(.sizeThatFits)
    }
}
