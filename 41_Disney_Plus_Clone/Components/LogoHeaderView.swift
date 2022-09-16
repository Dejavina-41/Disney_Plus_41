//
//  LogoHeaderView.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/30.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            LogoHeaderView()
        }
    }
}
