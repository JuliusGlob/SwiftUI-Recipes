//
//  WrapHstackMultiline.swift
//  Grid&Stacks
//
//  Created by Julio Ismael Robles on 08/11/2021.
//

import SwiftUI
import LoremSwiftum

struct WrapHstackMultiline: View {
    
    //let words = ["Action movies are good", "Horror one", "🐭", "IT 2", "Comedy is good", "Science Fiction", "Adventure Park", "Drama", "Romancce", "ET", "Silicon Valley", "Money Ball", "Raymond", "Thriller movies are the best movies!", "Seinfeld", "I know what you did last summer"]
    let words = Lorem.words(100).split(separator: " ").map { String($0) }
    var body: some View {
        TagsView(items: words)
    }
}

struct WrapHstackMultiline_Previews: PreviewProvider {
    static var previews: some View {
        WrapHstackMultiline()
    }
}

struct TagsView: View {
    
    let items: [String]
    var groupedItems: [[String]] = [[String]]()
    let screenWidth = UIScreen.main.bounds.width
    
    init(items: [String]) {
        self.items = items
        groupedItems = createGroupedItems(items)
    }
    
    private func createGroupedItems(_ items: [String]) -> [[String]] {
        
        var groupedItems: [[String]] = [[String]]()
        var tempItems: [String] = [String]()
        var width: CGFloat = 0
        
        
        for word in items {
            let label = UILabel()
            label.text = word
            label.sizeToFit()
            
            let labelWidth = label.frame.size.width + 32
            if (width + labelWidth + 55) < screenWidth {
                width += labelWidth
                tempItems.append(word)
            } else {
                width = labelWidth
                groupedItems.append(tempItems)
                tempItems.removeAll()
                tempItems.append(word)
            }
            
        }
        groupedItems.append(tempItems)
        return groupedItems
    }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                ForEach(groupedItems, id: \.self) { subItems in
                    HStack {
                        ForEach(subItems, id: \.self) { word in
                            Text(word)
                                .fixedSize()
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        }
                    }
                }
            }
        }
    }
}
