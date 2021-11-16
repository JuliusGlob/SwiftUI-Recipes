//
//  LearnSearchable.swift
//  NewIniOS15
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI


struct CustomerListView: View {
    
    let customers: [String]
    
    var body: some View {
        List(customers, id: \.self) { customer in
            Text(customer)
        }
    }
    
    
}


struct LearnSearchable: View {
    let names = ["alex","juan","ricardo","jess","John","Kawasaki","Ryu","Sherman",]
    @State private var text: String = ""
    var body: some View {
        NavigationView {
            
            CustomerListView(customers: names)
                
        }.searchable(text: $text) {
            ForEach(names.filter {$0.hasPrefix(text)}, id: \.self) { name in
                Text(name)
            }
        }.onSubmit(of: .search) {
            //perform the search
        }
    }
}

struct LearnSearchable_Previews: PreviewProvider {
    static var previews: some View {
        LearnSearchable()
    }
}
