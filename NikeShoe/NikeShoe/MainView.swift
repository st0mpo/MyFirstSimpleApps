import SwiftUI

struct MainView : View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            
            Home()
            
            HStack(spacing: 0) {
                Button{
                    
                    withAnimation {
                    
                    
                    index = 0
                    }
                    } label: {
                    HStack(spacing: 8){
                        Image(systemName: "house.fill")
                            .foregroundColor(index == 0 ? .white : Color.black.opacity(0.35))
                            .padding(10)
                            .background(index == 0 ? Color.black : Color.clear)
                            .cornerRadius(8)
                        
                        Text(index == 0 ? "Home" : " ")
                            .foregroundColor(.black)
                    }
                }
                Spacer(minLength: 0)
                
                Button{
                    
                    withAnimation {
                    
                    
                    index = 1
                    }
                    } label: {
                    HStack(spacing: 8){
                        Image(systemName: "suit.heart")
                            .foregroundColor(index == 1 ? .white : Color.black.opacity(0.35))
                            .padding(10)
                            .background(index == 1 ? Color.black : Color.clear)
                            .cornerRadius(8)
                        
                        Text(index == 0 ? "Loved" : " ")
                            .foregroundColor(.black)
                    }
                }
                
                Spacer(minLength: 0)
                
                Button{
                    
                    withAnimation {
                    
                    
                    index = 2
                    }
                    } label: {
                    HStack(spacing: 8){
                        Image(systemName: "person.heart")
                            .foregroundColor(index == 2 ? .white : Color.black.opacity(0.35))
                            .padding(10)
                            .background(index == 2 ? Color.black : Color.clear)
                            .cornerRadius(8)
                        
                        Text(index == 2 ? "Account" : " ")
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(.top)
            .padding(.horizontal, 25)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .background(Color.white)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
    }
}


var topMenu = ["Shoes", "Clothing", "By Sports", "By Brand", "By Price"]

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
