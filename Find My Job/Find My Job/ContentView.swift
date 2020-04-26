import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    RecentJobsScrollView()
                }
                .edgesIgnoringSafeArea(.top)
                    
                .tabItem { Image(systemName: "house.fill") }.tag(1)
                
                
                Text("Tab Content 2").tabItem { Image(systemName: "bookmark.fill") }.tag(2)
                Text("Tab Content 3").tabItem {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 33))
                }.tag(3)
                Text("Tab Content 4").tabItem { Image(systemName: "gear") }.tag(4)
                Text("Tab Content 5").tabItem { Image(systemName: "person.fill") }.tag(5)
            }
            
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct SearchButtonsHStackView: View {
        
        let buttons = [SearchButton(icon: "slider.horizontal.3", label: "Filters"),
                       SearchButton(icon: "mappin.and.ellipse", label: "Location"),
                       SearchButton(icon: "square.grid.2x2.fill", label: "Category")]
        
        var body: some View {
            HStack {
                ForEach(buttons, id: \.self) { button in
                    Button(action: self.buttonAction) {
                        HStack {
                            Image(systemName: button.icon)
                            Text(button.label)
                        }
                    }
                    .accentColor(.white)
                    .padding(10)
                    .padding(.horizontal, 8)
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(8)
                }
            }
        }
        
        func buttonAction() {
            print("Hi button")
        }
    }
    
    
    struct SearchButton: Hashable {
        let icon: String
        let label: String
    }
    
    struct SearchJobView: View {
        var body: some View {
            VStack {
                SearchTextFieldView()
                SearchButtonsHStackView()
            }
        }
    }
    
    struct RecentJobsScrollView: View {
        
        @ObservedObject var jobs = NetworkManager()
        
        var body: some View {
            ScrollView(.vertical, showsIndicators: true) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing)
                    SearchJobView()
                }
                .frame(height: 220)
                
                
                HStack {
                    Text("Recent Jobs")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }.padding()
                
                
                
                ForEach(self.jobs.jobResults, id: \.id) { job in
                    NavigationLink(destination: JobDetailView(job: job)) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(12)
                                .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 6)
                                .padding(.horizontal)
                            
                            HStack(alignment: .top) {
                                Image(systemName: "dollarsign.circle")
                                    .font(.largeTitle)
                                    .padding()
                                
                                VStack(alignment: .leading){
                                    
                                    Text(job.company)
                                        .foregroundColor(.secondary)
                                    
                                    Text(job.title)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    
                                    Text(job.type)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.black)
                                }
                                
                                VStack{
                                    
                                    Image(systemName: "bookmark.fill")
                                    Spacer()
                                    Text(job.createdAt.prefix(10))
                                    
                                }
                                .padding(.trailing)
                                .foregroundColor(.secondary)
                            }
                            .padding()
                        }
                    }
                }
            }

        }
    }
}


//MARK: - Detail View -

struct JobDetailView: View {
    
    var job: JobResults
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            ZStack {
            Image("workplace")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:324)
                .overlay(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]), startPoint: .top, endPoint: .bottom))
            
            Circle()
                .foregroundColor(.secondary)
                .frame(width: 72)
                .offset(x: 0, y: 100)
                .overlay(Image(systemName: "dollarsign.circle.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 72))
                    .offset(x: 0, y: 40)
                )
            }.padding()
            
            
            
            Text(job.title)
                .font(.title)
                .bold()
                .padding(.top)
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}


//MARK: - Network Manager Class -

class NetworkManager: ObservableObject {
    
    @Published var jobResults = [JobResults(id: "", type: "", url: "", createdAt: "", company: "", companyUrl: "", location: "", title: "", welcomeDescription: "", howToApply: "", companyLogo: "")]
    
    let urlString = "https://jobs.github.com/positions.json?description=mobile&full_time=true&location=sf"
    
    init() {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let result = try decoder.decode([JobResults].self, from: data)
                
                DispatchQueue.main.async {
                    self.jobResults = result
                }
            } catch {
                print("Ooops...\(error)")
            }
        }.resume()
    }
}





struct JobResults: Codable {
    let id: String
    let type: String
    let url: String
    let createdAt: String
    let company: String
    let companyUrl: String?
    let location: String?
    let title: String
    let welcomeDescription: String?
    let howToApply: String
    let companyLogo: String?
}
