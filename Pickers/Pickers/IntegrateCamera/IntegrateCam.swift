//
//  IntegrateCam.swift
//  Pickers
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI

struct IntegrateCam: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            image?.resizable().scaledToFit()
            Button("Open Camera") {
                self.showImagePicker = true
            }.padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

#if DEBUG
struct IntegrateCam_Previews: PreviewProvider {
    static var previews: some View {
        IntegrateCam()
    }
}
#endif
