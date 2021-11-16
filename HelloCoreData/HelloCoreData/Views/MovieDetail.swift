//
//  MovieDetail.swift
//  HelloCoreData
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct MovieDetail: View {
    
    let movie: Movie
    @State private var movieName: String = ""
    @Binding var neesRefresh: Bool
    @Environment(\.presentationMode) var presentationMode
    let coreDM: CoreDataManager
    
    var body: some View {
        VStack {
            TextField(movie.title ?? "", text: $movieName)
                .textFieldStyle(.roundedBorder)
            Button("Update") {
                if !movieName.isEmpty {
                    movie.title = movieName
                    coreDM.updateMovie()
                    neesRefresh.toggle()
                    presentationMode.wrappedValue.dismiss()
                }
            }.buttonStyle(.borderedProminent)
                
            
        }.padding()
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        let coreDM = CoreDataManager()
        let movie = Movie(context: coreDM.persistentContainer.viewContext)
        MovieDetail(movie: movie, neesRefresh: .constant(false), coreDM: coreDM)
    }
}
