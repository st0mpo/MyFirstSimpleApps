import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                TopInfoView()
                MainList()
                
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
