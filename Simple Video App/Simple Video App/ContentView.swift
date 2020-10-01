//
//  ContentView.swift
//  Simple Video App
//
//  Created by Александр Истомин on 10.02.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @State private var isVideoPlaying = false
    let urlString = "https://devstreaming-cdn.apple.com/videos/wwdc/2019/238w8avpcuaf5ox/238/hls_vod_mvp.m3u8"
    
    var body: some View {
        VStack {
            Text("Start Video")
            
            Button(action: play) {
                Image(systemName: "play")
                    .font(.largeTitle)
                
            }
        }
    }
    
    func play() {
        isVideoPlaying.toggle()
        
        guard let url = URL(string: urlString) else { return }
        
        let player = AVPlayer(url: url)
        let controller = AVPlayerViewController()
        controller.player = player
        
        UIApplication.shared.windows.first?.rootViewController?.present(controller, animated: true) {
            player.play()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
