//
//  SearchView.swift
//  41_Disney_Plus_Clone
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    @State private var selectedMovie: Movie?
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack(alignment: .leading, spacing: 20) {
                searchView
                ScrollView(showsIndicators: false) {
                    exploreText
                    categoryButtons
                    movies
                }
            }.padding()
                .padding(.top, 50)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private var searchView: some View {
        VStack {
            ZStack(alignment: .leading) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("作品名、キャラクター名で検索", text: $searchText)
                    .foregroundColor(.gray)
                    .padding(.leading, 20)
            }
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
        }
    }
    
    private var exploreText: some View {
        HStack {
            Text("Explore")
                .font(.largeTitle)
                .foregroundColor(.white)
            Spacer()
        }
    }
    
    private var searchCategories = [
    SearchCategory(title: "オリジナル", systemImage: "star.fill"),
    SearchCategory(title: "映画", systemImage: "film"),
    SearchCategory(title: "シリーズ", systemImage: "personalhotspot"),
    ]
    
    private var categoryButtons: some View {
        HStack (spacing: 30) {
            ForEach(searchCategories) { category in
                SquareButton(searchCategory: category)
            }
        }
    }
    
    private var movies: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 200))]) {
            ForEach(getFilterdMovies()) {  movie in
                ZStack {
                    Button(action: {
                        self.selectedMovie = movie
                    }) {
                        Image(movie.posterImage)
                            .resizable()
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    .sheet(item: $selectedMovie) { movie in
                        MovieDetailView(movie: movie)
                    }
                }
            }
        }
    }
    
    private func getFilterdMovies() -> [Movie] {
        if searchText.isEmpty {
            return MovieSection.sampleMovies
        }  else {
            return MovieSection.sampleMovies.filter {
                $0.title.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
