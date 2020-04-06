import SwiftUI

struct TopInfoView: View {
    var body: some View {
        VStack {
            TopLogoView()
            Text("COVID-19")
                .font(.title)
                .fontWeight(.heavy)
            
            Text("Screening Tool")
            .font(.title)
            .fontWeight(.heavy)
        }
    }
}

struct TopInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TopInfoView()
    }
}
