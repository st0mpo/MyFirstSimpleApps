import SwiftUI

struct MainList: View {
    
    let infoCells = [MainCellData(image: "text.badge.plus", color: .yellow, title: "What you can do", body: "Same Text An up-to-date rundown of the virus", aboutCellData:
        
        [AboutCellData(image: "star.fill", color: .pink, title: "Washing your hands", previewBody: "Lots of preview text and staff", body: "Lots more text about staff")]),
    
    MainCellData(image: "list.bullet.indent", color: .green, title: "What you can do", body: "Same Text An up-to-date rundown of the virus", aboutCellData:
    
    [AboutCellData(image: "star.fill", color: .pink, title: "Washing your hands", previewBody: "Lots of preview text and staff", body: "Lots more text about staff")]),
    
    MainCellData(image: "list.bullet.indent", color: .purple, title: "COVID-19 Testing", body: "Same Text An up-to-date rundown of the virus", aboutCellData:
       
       [AboutCellData(image: "star.fill", color: .pink, title: "Washing your hands", previewBody: "Lots of preview text and staff", body: "Lots more text about staff")]),
    
    MainCellData(image: "app.fill", color: .orange, title: "COVID-19 Testing", body: "Same Text An up-to-date rundown of the virus", aboutCellData:
         
         [AboutCellData(image: "star.fill", color: .pink, title: "Washing your hands", previewBody: "Lots of preview text and staff", body: "Lots more text about staff")])
    
    
    ]
    
    var body: some View {
        ForEach(infoCells, id: \.self) { cell in
            NavigationLink(destination: AboutView(aboutData: cell.aboutCellData)) {
                HStack(alignment: .top) {
                    ZStack {
                        Circle()
                            .foregroundColor(cell.color)
                            .frame(width: 44, height: 44)
                        
                        Image(systemName: cell.image)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing)
                    
                    VStack(alignment: .leading) {
                        Text(cell.title)
                            .fontWeight(.bold)
                        
                        Text(cell.body)
                    }
                }
                .padding()
            }
        .frame(height: 120)
        }
    }
}

struct MainList_Previews: PreviewProvider {
    static var previews: some View {
        MainList()
            .previewLayout(.sizeThatFits)
    }
}


struct MainCellData: Hashable {
    let image: String
    let color: Color
    let title: String
    let body: String
    let aboutCellData: [AboutCellData]
}

struct AboutCellData: Hashable {
    let image: String
    let color: Color
    let title: String
    let previewBody: String
    let body: String
}
