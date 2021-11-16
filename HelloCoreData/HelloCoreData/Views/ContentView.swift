//
//  ContentView.swift
//  HelloCoreData
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    let coreDM: CoreDataManager
    @State private var movieName: String = ""
    @State private var movies: [Movie] = [Movie]()
    @State private var needsRefresh: Bool = false
    
    private func populateMovies() {
        movies = coreDM.getAllMovies()
        
    }
    
    var body: some View {
        NavigationView{
            VStack {
                TextField("Enter movie name", text: $movieName)
                    .textFieldStyle(.roundedBorder)
                
                Button("Save") {
                    coreDM.saveMovie(title: movieName)
                    populateMovies()
                    movieName = ""
                    
                }.buttonStyle(.borderedProminent)
                List {
                    ForEach(movies, id: \.self) { movie in
                        NavigationLink(destination: MovieDetail(movie: movie, neesRefresh: $needsRefresh, coreDM: coreDM),
                                       label: {
                            Text(movie.title ?? "")
                            
                        })
                    }.onDelete { indexSet in
                        indexSet.forEach { index in
                            let movie = movies[index]
                            coreDM.deleteMovie(movie: movie)
                            populateMovies()
                        }
                    }
                }.listStyle(.plain)
                    .accentColor(needsRefresh ? .white : .black)
                Spacer()
                    .navigationTitle("Movies List")
            }.padding()
                .onAppear {
                    populateMovies()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coreDM: CoreDataManager())
    }
}
