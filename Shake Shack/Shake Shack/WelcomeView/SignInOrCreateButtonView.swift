import SwiftUI

struct SignInOrCreateButtonView: View {
    var body: some View {
        HStack {
            Image(systemName: "bag")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            VStack(alignment: .leading) {
                Text("Lets get shackin!")
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
                Text("Sign or create an account")
                    .foregroundColor(.secondary)
            }.padding(.horizontal )
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(18)
        .padding(.horizontal, 8)
    }
}

struct SignInOrCreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInOrCreateButtonView()
    }
}
