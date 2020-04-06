import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                TopInfoView()
                
                ForEach(0 ..< 4) { _ in
                    NavigationLink(destination: Text("Coming")) {
                        HStack {
                            Image(systemName: "text.badge.plus")
                            VStack {
                                Text("Some Text coming soon")
                            }
                        }
                    }
                }
            }
        .navigationBarTitle(" ")
        .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
