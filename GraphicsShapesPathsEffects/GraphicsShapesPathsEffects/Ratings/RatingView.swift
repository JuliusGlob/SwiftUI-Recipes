//
//  RatingView.swift
//  GraphicsShapesPathsEffects
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int?
    
    private func starType(index: Int) -> String {
        if let rating = self.rating {
            return (index <= rating) ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                
                 Image(systemName: starType(index: index))
                    .foregroundColor(Color.orange)
                    .font(.largeTitle)
                    .onTapGesture {
                        self.rating = index
                    }
                
            }
        }
    }
}

struct DisplayRatingView: View {
    @State private var rating: Int?
    var body: some View {
        VStack {
            RatingView(rating: $rating)
            Text(rating != nil ? "Your rating: \(rating!)" : "")
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayRatingView()
    }
}
