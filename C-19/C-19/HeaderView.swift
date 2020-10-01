
import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("COVID-19")
                .font(.title)
                .fontWeight(.heavy)
            
            Text("Screening Tool")
            .font(.title)
            .fontWeight(.heavy)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
