import SwiftUI

struct ContinueButtonView: View {
    
    @Binding var steps: Int
    
    var body: some View {
        Button(action: {
            self.steps += 1
        }) {
            Text("Continue")
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 24, height: 60)
        .background(Color.green)
    .cornerRadius(18)
    }
}

//struct ContinueButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContinueButtonView(steps: $steps)
//    }
//}
