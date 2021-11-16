//
//  ActivityViewIndicatorToSwiftUI.swift
//  UikitSwiftUI
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI

struct ActivityViewIndicatorToSwiftUI: View {
    
    @State private var loading: Bool = false
    
    var body: some View {
        VStack {
            LoadingIndicator(loading: $loading)
            Button("Get Data") {
                loading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    loading = false
                }
            }
        }
    }
}

struct ActivityViewIndicatorToSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ActivityViewIndicatorToSwiftUI()
    }
}
