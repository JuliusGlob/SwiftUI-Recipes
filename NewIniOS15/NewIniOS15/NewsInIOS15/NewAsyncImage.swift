//
//  NewAsyncImage.swift
//  NewIniOS15
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct NewAsyncImage: View {
    
    let posterURL = URL(string: "https://images.pexels.com/photos/1461974/pexels-photo-1461974.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
    
    var body: some View {
        AsyncImage(url: posterURL) { phase in
            if let image = phase.image {
                image
                    .resizable()
            } else if phase.error != nil {
                Image(systemName: "exclamationmark.circle")
            } else {
                Image(systemName: "photo")
            }
        }
    }
}

struct NewAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        NewAsyncImage()
    }
}
