//
//  ImagePicker.swift
//  Pickers
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import Foundation
import SwiftUI

class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    // We need bindings to adjust the view's state.
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    init(isShown: Binding<Bool>, image: Binding<Image?>) {
        _isShown = isShown
        _image = image
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //setup the picker to allow the selection of an image
        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        image = Image(uiImage: uiImage)
        // if an image was picked then picker is no longer needed
        isShown = false
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // if the picker was canceled then it is no longer needed
        isShown = false
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    //this is necessary to conform to the protocol, we can leave it empty
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    // setup the coordinator that will be used.
    func makeCoordinator() -> ImagePickerCoordinator {
        return ImagePickerCoordinator(isShown: $isShown, image: $image)
    }
    
    //setup the view we will use UImagePickerController which is already built in
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
}
