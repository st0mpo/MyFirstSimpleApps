
import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            
            HStack {
                Image("logo")
                    .renderingMode(.original)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("menu")
                        .renderingMode(.original)
                }
            }
            .padding()
            
            Spacer(minLength: 0)
        }
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}




