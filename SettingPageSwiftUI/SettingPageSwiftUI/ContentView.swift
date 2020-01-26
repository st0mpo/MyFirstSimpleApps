//
//  ContentView.swift
//  SettingPageSwiftUI
//
//  Created by Александр Истомин on 26.01.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    @State var receive = true
    @State var number = 1
    @State var selector = 1
    @State var date = Data()
    @State var email = ""
    @State var submit = false
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $receive) {
                    Text("Receive notofocations")
                }
                Stepper(value: $number, in: 1...10) {
                    Text("\(number) Notification\(number > 1 ? "s" : "") per week")
                }
                
            
                Picker(selection: $selector, label: Text("Favorite course")) {
                    Text("SwiftUI").tag(1)
                    Text("React").tag(2)
                }
                Section(header: Text("Email")) {
                    TextField("Your email", text: $email)
                }
                Button(action: { self.submit.toggle() }  ) {
                    Text("Sumbit")
                }
                
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
