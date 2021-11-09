//
//  URLImage.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

struct URLImage: View {
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!).resizable()
        } else {
            return Image("placeholder").resizable()
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://upload.wikimedia.org/wikipedia/commons/d/da/Internet2.jpg")
    }
}
