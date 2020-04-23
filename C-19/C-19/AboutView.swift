import SwiftUI

struct AboutView: View {
    
    let aboutData: [AboutCellData]
    @State private var isShowing = false
    
    var body: some View {
        ScrollView(.vertical) {
            ForEach(aboutData, id: \.self) { item in
                VStack {
                    HStack {
                        
                        Image(systemName: item.image)
                            .font(.title)
                            .foregroundColor(item.color)
                            .frame(width: 50)
                            .padding(.trailing)
                      
                        
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.title)
                                .fontWeight(.heavy)
                            
                            
                            Text(item.previewBody)
                        }
                    }.padding()
                    
                    
                    
                    
                    Divider()
                        .padding(.horizontal)
                    HStack {
                        Button(action: {
                            self.isShowing.toggle()
                        }) {
                            Text("Learn More")
                                .bold()
                        }
                        
                    }
                    Spacer()
                }
                .padding()
                .sheet(isPresented: self.$isShowing) {
                    LearnMoreView(isShowing: self.$isShowing)
                    
                }
            }
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(color: Color.secondary.opacity(0.4), radius: 4, x: 0, y: 8)
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
        .background(Color(.systemGroupedBackground))
    }
    
}



    

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView(aboutData: [AboutCellData(image: "staroflife.fill", color: .yellow, title: "About Staff", previewBody: "This is just preview of more text", body: "More text")])
    }
}
