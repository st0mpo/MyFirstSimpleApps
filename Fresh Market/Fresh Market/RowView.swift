import SwiftUI

struct RowView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("food02")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 100)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text("Fresh Blueberry")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Some fresh fruits and berrys for you in winter weather.")
                    .foregroundColor(.secondary)
                
                Text("$ 1.99")
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                    .padding(.top, 4)
            }
        }
        .padding()
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
