import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FlightView()
            
            Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FlightView: View {
    var body: some View {
        VStack {
            TopView()
        }.tabItem {
            Image(systemName: "airplane")
            Text("Flights")
        }.tag(1)
    }
}

struct TopView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.secondary)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Image("girl")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .clipShape(Circle())
                    .overlay(
                        Image(systemName: "person.crop.circle.fill.badge.plus")
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 4, x: 0, y: 0)
                            .font(.system(size: 38))
                            .offset(x: 70, y: -60)
                )
                
                
                Text("Kelsey")
                    .font(.title)
                    .bold()
                    .padding(4)
                
                Text("kelseu@memail.com")
                    .font(.subheadline)
                
            }
        }
    }
}
