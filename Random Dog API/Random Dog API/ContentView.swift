import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @ObservedObject var image = NetworkManager()
    
    var body: some View {
        VStack {
            WebImage(url: URL(string: image.dog.message))
                .onSuccess {image, cacheType in }
                .resizable()
                .placeholder { Rectangle().foregroundColor(.secondary) }
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
                .cornerRadius(18)
            
            Button(action: getPhoto) {
                Text("Get Dog Photo")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            .padding()
        }
    }
    
    
    func getPhoto() {
        image.getDogImage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class NetworkManager: ObservableObject {
    @Published var dog = Dog(message: "", status: "")
    
    let urlString = "https://dog.ceo/api/breeds/image/random"
    
    init() {
        getDogImage()
    }
    
    func getDogImage() {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                
                let decoder = JSONDecoder()
                let result = try decoder.decode(Dog.self, from: data)
                
                DispatchQueue.main.async {
                    self.dog = result
                }
            } catch {
                print("No dogs... \(error)")
            }
        }.resume()
}

struct Dog: Decodable {
    let message : String
    let status : String
}
}
