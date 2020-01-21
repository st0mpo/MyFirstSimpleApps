import SwiftUI

struct ContentView: View {


    
    var body: some View {
        VStack {
            TopView()
            XPBarView()
            DateSelectView()
            
            ZStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.6)
                    .edgesIgnoringSafeArea(.bottom)
                
                ScrollView(.vertical, showsIndicators: true) {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        CardView()
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
     
            ContentView()
          
    }
}






