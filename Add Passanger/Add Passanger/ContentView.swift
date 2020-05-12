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
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.secondary)
                        .edgesIgnoringSafeArea(.top)
                    
                    VStack {
                        TopView()
                        IconsHStackView()
                        
                        
                        List(0 ..< 5) { item in
                            NavigationLink(destination: Text("Coming soon")) {
                                Image(systemName: "questionmark.circle")
                                Text("Phone number")
                            }
                        }
                        .frame(height: UIScreen.main.bounds.height - 500)
                    }
                }
            }
        }
            
        .tabItem {
            Image(systemName: "airplane")
            Text("Flights")
        }.tag(1)
    }
}




struct TopView: View {
    var body: some View {
        

            VStack {
                Image("girl")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .clipShape(Circle())
                //                    .overlay(
                //                        Image(systemName: "person.crop.circle.fill.badge.plus")
                //                            .foregroundColor(.white)
                //                            .shadow(color: .black, radius: 4, x: 0, y: 0)
                //                            .font(.system(size: 38))
                //                            .offset(x: 70, y: -60)
                //                )
                
                
                Text("Kelsey")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(4)
                
                Text("kelseu@memail.com")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
        }
    }
}


struct IconsHStackView: View {
    
    let icons = [Icon(image: "doc", label: "Passanger\nDocs"), Icon(image: "bell", label: "Flight\nPrice"), Icon(image: "questionmark.circle", label: "Help\nCenter")]
    
    var body: some View {
        HStack {
            ForEach(icons, id: \.self) { icon in
                VStack {
                    Image(systemName: icon.image)
                        .font(.title)
                        .padding()
                        .background(Color.white).clipShape(Circle())
                    
                    Text(icon.label)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
        }
    }
}

struct Icon : Hashable {
    let image: String
    let label: String
}
