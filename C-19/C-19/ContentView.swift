import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                TopInfoView()
                
                ForEach(0 ..< 4) { _ in
                    NavigationLink(destination: Text("Coming")) {
                        HStack {
                            ZStack {
                                Circle()
                                    .foregroundColor(.yellow)
                                    .frame(width: 44)
                                
                                Image(systemName: "staroflife.fill")
                                    .foregroundColor(.white)
                            }
                            .padding(.trailing)
                            
                            VStack(alignment: .leading) {
                                Text("About COVID-19")
                                    .fontWeight(.bold)
                                
                                Text("""
An up-to-date rundown of the virus
and its symtoms
""")
                            }
                        }
                        .padding()
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
