//
//  LoadingIndicator.swift
//  UikitSwiftUI
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import Foundation
import SwiftUI
import UIKit

struct LoadingIndicator: UIViewRepresentable {
    
    @Binding var loading: Bool
    
    typealias UIViewType = UIActivityIndicatorView
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.color = UIColor.gray
        return activityIndicator
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
        if loading {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
    
}
