import SwiftUI

struct AccountView: View {
    
    @Binding var isAccountViewShowing : Bool
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    
                    Text("Account")
                        .font(.headline)
                        .bold()
                    
                    Spacer()
                    
                    Button(action: { isAccountViewShowing.toggle() }, label: {
                        Text("Done")
                    })
                }
                .padding()
                .background(Color(.secondarySystemGroupedBackground))
                
                List {
                    Section {
                        HStack {
                            Image(systemName: "person")
                                .font(.system(size: 55))
                                .padding()
                            
                            VStack(alignment: .leading) {
                                Text("Person name")
                                    .font(.headline)
                                
                                Text("email@gmail.com")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    
                    Section {
                        ForEach(0 ..< 5) { item in
                            NavigationLink(
                                destination: Text("Destination"),
                                label: {
                                    Text("Navigate")
                            })
                        }
                    }
                }
                .listStyle(GroupedListStyle())
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(isAccountViewShowing: Binding.constant(true))
    }
}
