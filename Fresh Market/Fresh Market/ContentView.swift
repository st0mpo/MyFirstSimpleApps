import SwiftUI

struct ContentView: View {
    
   
    
    var body: some View {
        TabView {
            HomeView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }.tag(1)
            
            Text("Tab item 2")
                .tabItem {
                    Image(systemName: "doc.on.clipboard")
                    Text("Meals")
                }.tag(2)
            
            Text("Tab item 3")
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Saved")
                }.tag(3)
            
            Text("Tab item 4")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }.tag(4)
            
            Text("Tab item 5")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profiles")
                }.tag(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



