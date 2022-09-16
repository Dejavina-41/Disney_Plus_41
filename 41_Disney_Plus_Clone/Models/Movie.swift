//
//  Movie.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/26.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    var title: String
    var posterImage: String
    var promoimage: String
    var details: String
    var movieUrl: String
}

extension Movie {
    static var promos: [Movie] {
        return [
            Movie(title: "となりのトトロ", posterImage: "tototro2", promoimage: "totoro2", details: "説明", movieUrl: ""),
            Movie(title: "崖の上のポニョ", posterImage: "ponyo2", promoimage: "ponyo2", details: "説明", movieUrl: ""),
            Movie(title: "千と千尋の神隠し", posterImage: "chihiro2", promoimage: "chihiro2", details: "説明", movieUrl: "")
        ]
    }
}
