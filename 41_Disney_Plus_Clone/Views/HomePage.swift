//
//  HomePage.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            ScrollView {
                VStack {
                    LogoHeaderView()
                        .frame(maxWidth: 100)
                        .padding(40)
                    
                    CarouselView()
                    ChannelView()
                        .frame(width: UIScreen.main.bounds.width)
                    
                    ForEach(MovieSection.movieSections) { section in
                        MovieSectionView(movieSection: section)
                            .frame(width:  UIScreen.main.bounds.width)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
