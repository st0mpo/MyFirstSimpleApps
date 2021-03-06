import SwiftUI

struct VButtons: View {
    
    let buttonLabels = ["Start Screening", "View Previous Results"]
    @Binding var isShowing : Bool
    
    
    var body: some View {
        VStack {
            ForEach(buttonLabels, id: \.self) { label in
                Button(action: {
//                    if self.buttonLabels.contains("Result") {
                        self.isShowing.toggle()
//                    }
                }) {
                    Text(label)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                        .background(Color.blue)
                        .cornerRadius(12)
                        .padding(.vertical, 8)
                }
            }
        }
        .padding(.top, 24)
        
    }
}

//struct VButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        VButtons()
//    }
//}
