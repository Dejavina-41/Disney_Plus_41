//
//  VideoView.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    let player: AVPlayer
    
    init(videoUrl: String) {
        self.player = AVPlayer(url: URL(string: videoUrl)!)
    }
    
    var body: some View {
        VideoPlayer(player: player)
        
    }
}

