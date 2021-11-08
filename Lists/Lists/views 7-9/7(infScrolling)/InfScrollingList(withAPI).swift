//
//  InfScrollingList(withAPI).swift
//  Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct InfScrollingList_withAPI_: View {
    
    @StateObject private var numberListVM = NumberListViewModel()
    @State private var currentPage: Int = 1
    
    var body: some View {
        List(numberListVM.numbers, id: \.self) { number in
            Text("\(number)")
                .onAppear(perform: {
                    if numberListVM.shouldLoadData(id: number) {
                        currentPage += 1
                        numberListVM.populateData(page: currentPage)
                    }
                })
        }.onAppear(perform: {
            numberListVM.populateData(page: 1)
        })
    }
}

struct InfScrollingList_withAPI__Previews: PreviewProvider {
    static var previews: some View {
        InfScrollingList_withAPI_()
    }
}
