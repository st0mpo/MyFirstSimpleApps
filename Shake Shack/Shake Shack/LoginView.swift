import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var presentationMode:
    Binding<PresentationMode>
    
    
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue .dismiss()
        }) {
            ZStack {
                Circle()
                    .offset(x:2)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.gray)
                
                Image(systemName: "chevron.left")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.black)
                
            }
        }
    }
    
    
    @State private var email = ""
    @State private var steps = 0
    
    var body: some View {
        NavigationView {
            VStack {
                GetTheGoodsTextView()
                
                
                if steps == 0 {
                    LoginTextFieldView(email: $email)
                } else {
                    LoginTextFieldView(email: $email)
                    LoginTextFieldView(email: $email)
                }
               
                if email.isEmpty {
                    LoginButtonsView()
                } else {
                    ContinueButtonView(steps: $steps)
                }
                
                
                
                Spacer()
            }.padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
