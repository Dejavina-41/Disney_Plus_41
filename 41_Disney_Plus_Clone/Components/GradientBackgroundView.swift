//
//  GradientBackgroundView.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/30.
//

import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ColorConstants.darkGrayColor, ColorConstants.darkBluishGrayColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
