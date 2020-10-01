import SwiftUI

struct LoginTextFieldView: View {
    @Binding var email: String
    
    
    var body: some View {
        TextField("Enter your email", text: $email)
            .keyboardType(.emailAddress)
            .padding()
            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            .cornerRadius(18)
            .padding()
    }
}

//struct LoginTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginTextFieldView()
//    }
//}
