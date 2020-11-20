import SwiftUI

struct GridCellView: View {
    var body: some View {
        VStack {
            HStack {
                Text("$180")
                    .font(.body)
                    .bold()
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                })
            }
            .padding([.top, .horizontal])
            
            Image(uiImage: #imageLiteral(resourceName: "shoe"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text("Some Shoe")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Text("Some detail")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading, .bottom])
        }
        .frame(width: 180, height: 180)
        .background(Color(.secondarySystemBackground))
        .foregroundColor(Color(.label))
        .cornerRadius(18)
    }
}

struct GridCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GridCellView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            GridCellView()
                .previewLayout(.sizeThatFits)
        }
    }
}
