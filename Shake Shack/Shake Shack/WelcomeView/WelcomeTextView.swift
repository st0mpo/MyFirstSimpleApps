//
//  WelcomeTextView.swift
//  Shake Shack
//
//  Created by Александр Истомин on 01.12.2019.
//  Copyright © 2019 Александр Истомин. All rights reserved.
//

import SwiftUI

struct WelcomeTextView: View {
    var body: some View {
       VStack {
            Text("Sip our new\nCascara Shake!")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Text("Our newest shake is sweet + fruity with\nnotes of cherry + red currany.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
}

struct WelcomeTextView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTextView()
            .background(Color.primary)
    }
}
