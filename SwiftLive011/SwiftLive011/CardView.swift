import SwiftUI

struct CardView: View {
    var body: some View {
        HStack(alignment: .top){
            Image("game")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipShape(Circle())
                .padding(.top)
            
            VStack(alignment: .leading) {
                Text("Games and stuff")
                    .font(.headline)
                    .bold()
                    .padding(.bottom)
                
                Text("Модель представляет собой мотоцикл двойного назначения, способный передвигаться под дорогам любого качества - от асфальта до грунтовок. Главной особенностью Honda AX-1 (NX250) является высокая надежность основных узлов и агрегатов.")
                    .padding(.bottom)
                
                HStack {
                    
                    ZStack {
                        Capsule()
                            .foregroundColor(.red)
                            .frame(width: 88, height: 34)
                        
                        Text("SETUP")
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                    
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }
            }.padding()
        }
        .background(Color.white)
        .cornerRadius(18)
        .padding()
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
