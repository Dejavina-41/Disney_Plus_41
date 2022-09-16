//
//  Profile.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/30.
//

import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    
    var name: String
    var avator: String
    var backColor: Color
}

extension Profile {
    static var sampleProfiles: [Profile] {
        return [
            Profile(name: "Tiger", avator: "🐯", backColor: .pink),
            Profile(name: "Mouse", avator: "🐭", backColor: .purple),
            Profile(name: "Dog", avator: "🐶", backColor: .green),
            Profile(name: "Panda", avator: "🐼", backColor: .orange),
            Profile(name: "Monkey", avator: "🐵", backColor: .red),
            Profile(name: "Hamster", avator: "🐹", backColor: .blue)
        ]
    }
}
