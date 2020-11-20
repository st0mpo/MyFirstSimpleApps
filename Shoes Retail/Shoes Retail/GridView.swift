import SwiftUI

struct GridView: View {
    
    let layout : [GridItem]
    
    var body: some View {
        LazyVGrid(columns: layout, spacing: 32) {
            ForEach(0 ..< 8) { item in
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        GridCellView()
                    })
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(layout: [
            GridItem(.adaptive(minimum: 180)),
        ])
    }
}
