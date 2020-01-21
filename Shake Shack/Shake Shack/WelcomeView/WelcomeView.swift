import SwiftUI

struct WelcomeView: View {
   
    @State private var isBottomViewOnScreen = false
    @State private var isSignUpViewOnScreen = false
    @State private var isMenuViewOnScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack {
                    MenuButtonView()
                        .offset(y: isMenuViewOnScreen ? 0 : -400)
                        .animation(.spring(dampingFraction: 0.8))
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                self.isMenuViewOnScreen.toggle()
                            }
                    }
                    Spacer()
                    WelcomeTextView()
                    Spacer()
                    NavigationLink(destination: LoginView()) {
                        SignInOrCreateButtonView()
                    }
                    
                    .offset(y: isSignUpViewOnScreen ? 0 : 400)
                    .animation(.spring(dampingFraction: 0.6))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                            self.isSignUpViewOnScreen.toggle()
                        }
                    }
                    
                   WelcomeBottomView()
                    .offset(y: isBottomViewOnScreen ? 0 : 400)
                    .animation(.spring(dampingFraction: 0.4))
                    .onAppear {
            
                            self.isBottomViewOnScreen.toggle()
                        }
                    
                }
                .frame(width: UIScreen.main.bounds.width)
                .edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
         
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}



