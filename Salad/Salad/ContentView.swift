import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
