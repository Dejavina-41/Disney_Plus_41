//
//  DownloadView.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Image(systemName: "square.and.arrow.down.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                    .padding()
                    .background(Circle().stroke(Color.gray, lineWidth: 4))
                
                Text("ダウンロード済みのコンテンツはありません")
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Text("映画やシリーズをダウンロードすると\nここに表示されます")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
