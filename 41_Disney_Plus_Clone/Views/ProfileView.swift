//
//  ProfileView.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

struct ProfileView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                profileView
                editProfile
                profileOptions
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
    
    private var profileView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(Profile.sampleProfiles) { profile in
                    ProfilePic(profile: profile)
                }
            }
        }.frame(maxHeight: 160).padding(.top, 40)
    }
    
    private var editProfile: some View {
        Button(action: {}) {
            Text("プロフィールを編集")
                .bold()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(RoundedRectangle(cornerRadius: 5).fill(Color.gray.opacity(0.8)))
    }
    
    private var listItems = ["お気に入り", "アプリ設定", "アカウント", "法的事項", "ヘルプ", "ログアウト"]
    
    private var profileOptions: some View {
        List {
            ForEach(listItems, id: \.self) { item in
                VStack(alignment: .leading) {
                    Text(item)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    
                    Rectangle().fill(Color.white)
                        .frame(height: 1)
                }
            }
            .listRowBackground(Color.clear)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
