
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                HeaderView()
                ForEach(0 ..< 5) { _ in
                    HStack {
                        CardView()
                        FavoriteView()
                        
                    }
                    }
            }
            .navigationBarTitle("Top Cities App")
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



