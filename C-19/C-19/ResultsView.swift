import SwiftUI

struct ResultsView: View {
    
    @Binding var isShowing : Bool
    
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
                        Image(systemName: "clock.fill")
                            .font(.title)
                            .foregroundColor(Color(.label))
                            .frame(width: 50)
                            .padding(.trailing)
                       
                        VStack(alignment: .leading) {
                            Text("March 27, 2020 at 11:22 PM")
                                .font(.title)
                                .fontWeight(.heavy)
                            
                            
                            Text("You should be fine.")
                        }
                    }.padding()
                    
                    
                    
                    
                    Divider()
                        .padding(.horizontal)
                    HStack {
                        Button(action: {
//                            self.isShowing.toggle()
                        }) {
                            Text("View Details")
                                .bold()
                        }
                        
                    }
                    Spacer()
                }
                .padding()
//                .sheet(isPresented: self.$isShowing) {
//                    LearnMoreView()
//
//                }
            
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(color: Color.secondary.opacity(0.4), radius: 4, x: 0, y: 8)
            .padding()
        }
    
}

//struct ResultsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultsView()
//    }
//}
