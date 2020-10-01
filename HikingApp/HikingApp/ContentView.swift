import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
            
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: Text(hike.name)) {
                HikeCell(hike: hike)
            }.navigationBarTitle("Hikings")
        }
    }
}
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.headline)
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}
