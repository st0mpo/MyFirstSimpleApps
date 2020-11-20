import SwiftUI

struct HeaderView: View {
    var body: some View {
        
            TabView {
                ForEach(0 ..< 3) { item in
                ZStack(alignment: .topLeading) {
                    Image("food01")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 172)
                        
                        .cornerRadius(12)
                    
                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.5), Color.black.opacity(0.2), Color.clear]), startPoint: .leading, endPoint: .trailing)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 172)
                        .cornerRadius(12)
                    
                    TextInfoView()
                    
                }
                .frame(width: UIScreen.main.bounds.width - 32, height: 172)
            }
        }
            .frame(width: UIScreen.main.bounds.width - 32, height: 260)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
