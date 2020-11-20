import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                FoodScrollView()
                NavigationLink(
                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                    label: {
                        FoodCardView()
                    })
            }
            .navigationTitle("I want to eat...🤔")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


