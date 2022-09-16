//
//  MovieSection.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/30.
//

import Foundation

struct MovieSection: Identifiable {
    let id = UUID()
    var sectionName: String
    var movies: [Movie]
}

extension MovieSection {
    static var movieSections: [MovieSection] {
        return
        [recommended, hitMovies, playing]
    }
    
    static var recommended: MovieSection {
        return MovieSection(sectionName: "あなたへのおすすめ", movies: sampleMovies.shuffled())
    }
    
    static var hitMovies: MovieSection {
        return MovieSection(sectionName: "大ヒット映画", movies: sampleMovies.shuffled())
    }
    
    static var playing: MovieSection {
        return MovieSection(sectionName: "視聴中の作品", movies: sampleMovies.shuffled())
    }
    
    static var sampleMovies: [Movie] {
        return [
            Movie(title: "崖の上のポニョ", posterImage: "ponyo", promoimage: "ponyo", details: "説明", movieUrl: ""),
            Movie(title: "千と千尋の神隠し", posterImage: "chihiro", promoimage: "chihiro", details: "説明", movieUrl: ""),
            Movie(title: "となりのトトロ", posterImage: "totoro", promoimage: "totoro", details: "説明", movieUrl: ""),
            Movie(title: "ゲド戦記", posterImage: "ged", promoimage: "ged", details: "説明", movieUrl: ""),
            Movie(title: "ハウルの動く城", posterImage: "howl", promoimage: "howl", details: "説明", movieUrl: ""),
            Movie(title: "かぐや姫の物語", posterImage: "kaguyahime", promoimage: "kaguyahime", details: "説明", movieUrl: ""),
            Movie(title: "借りぐらしのアリエッティ", posterImage: "karigurashi", promoimage: "karigurashi", details: "説明", movieUrl: ""),
            Movie(title: "風立ちぬ", posterImage: "kazetachinu", promoimage: "kazetachinu", details: "説明", movieUrl: ""),
            Movie(title: "コクリコ坂から", posterImage: "kokurikozaka", promoimage: "kokurikozaka", details: "説明", movieUrl: ""),
            Movie(title: "魔女の宅急便", posterImage: "majo", promoimage: "majo", details: "説明", movieUrl: ""),
            Movie(title: "思い出のマーニー", posterImage: "marnie", promoimage: "marnie", details: "説明", movieUrl: ""),
            Movie(title: "もののけ姫", posterImage: "mononoke", promoimage: "mononoke", details: "説明", movieUrl: "")
        ]
    }
}
