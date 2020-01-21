import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("pizza")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 320, alignment: .center)
                .cornerRadius(12)
                .clipped()
            
            LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                .frame(width: 320, height: 320, alignment: .center)
                .cornerRadius(12)
            
                Text("Testy 101: Best\nHomemade Pizza")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 100, alignment: .leading)
                    .padding(.top, 220)
        }
    }
}



struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
