//
//  ContentView.swift
//  ButtonsExample
//
//  Created by Александр Истомин on 26.04.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    let newButtons = [Buttons(icon: "trash.circle.fill", label: "1 Button", subLabel: "1 SubButton"),
                      Buttons(icon: "trash.circle.fill", label: "2 Button", subLabel: "2 SubButton"),
                      Buttons(icon: "trash.circle.fill", label: "3 Button", subLabel: "3 SubButton"),
                      Buttons(icon: "trash.circle.fill", label: "4 Button", subLabel: "4 SubButton")]
    
    var body: some View {
        HStack {
            ForEach(newButtons, id: \.self) { button in
                
                    Button(action: {
                        //
                    }) {
                        VStack() {
                        Image(systemName: button.icon)
                        Text(button.label)
                            Text(button.subLabel)
                                .multilineTextAlignment(.center)
                        
                        }
                }
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Buttons: Hashable {
    var icon: String
    var label: String
    var subLabel: String
}
