import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var
        presentationMode: Binding<PresentationMode>
    @Binding var isFullScreen : Bool
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .topLeading) {
                Image("food01")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack(alignment: .leading) {
                    Button(action: {
                        dismissView()
                    }) {
                        Image(systemName: "arrow.backward")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.top, 42)
                            .padding(.horizontal)
                    }
                    
                    TextInfoView()
                }
            }
            
            ForEach(0 ..< 5) { item in
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        RowView()
                    })
            }
            
            
        }
        .ignoresSafeArea(.all, edges: .top)
        .onAppear {
            isFullScreen.toggle()
        }
    }
    
    func dismissView() {
        self.presentationMode.wrappedValue.dismiss()
        isFullScreen.toggle()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(isFullScreen: Binding.constant(true))
    }
}
