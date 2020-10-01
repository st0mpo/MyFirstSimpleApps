
import SwiftUI

struct ContentView: View {
    
    @State private var randNumber1 = 2
    @State private var randNumber2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0
    
    var body: some View {
        

        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Image("card" + String(randNumber1))
                    Image("card" + String(randNumber2))
                }
                Spacer()
                
                Button(action: {
                    
                    self.randNumber1 = Int.random(in: 2...14)
                    self.randNumber2 = Int.random(in: 2...14)
                    
                    if self.randNumber1 > self.randNumber2 {
                        self.score1 += 1 }
                    else if self.randNumber2 > self.randNumber1 {
                        self.score2 += 1
                    }
                }) {
                    Image("dealbutton")
                        .renderingMode(.original)
                }
                
                Spacer()
                
                HStack {
                    VStack {
                        Text("Player")
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score1))
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score2))
                    }
                    .padding(.trailing, 20)
                    .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
