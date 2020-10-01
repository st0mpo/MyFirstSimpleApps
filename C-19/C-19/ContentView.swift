import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            List {
                TopInfoView(isShowing: $isShowing)
                
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
