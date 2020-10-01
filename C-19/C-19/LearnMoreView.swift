import SwiftUI

struct LearnMoreView: View {
    
    @State var isShowing = true
    
    var body: some View {
        ScrollView {
            HStack {
                Spacer()
                Button(action: {
                    self.isShowing.toggle()
                }) {
                    Image(systemName: "xmark.circle.fill")
                    .font(.largeTitle)
                        .foregroundColor(Color(.systemGray3))
                }
            }
            .padding([.top, .trailing])
            
            HStack {
                Image(systemName: "waveform.path.ecg")
                    .font(.largeTitle)
                    .foregroundColor(Color(.systemTeal))
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Text("Social Distanancing")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding([.leading, .bottom])
                Spacer()
            }
            
            
            Text("The main way COVID-19 spreads is between people")
            
            HStack {
                Text("How to")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                Spacer()
            }
            
            Text("More text here")
        }
    }
}


struct LearnMoreView_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreView()
    }
}
