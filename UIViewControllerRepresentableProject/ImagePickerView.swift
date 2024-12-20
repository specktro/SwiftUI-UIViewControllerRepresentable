//
//  ImagePickerView.swift
//  UIViewControllerRepresentableProject
//
//  Created by specktro on 19/12/24.
//

import SwiftUI
import UIKit

struct ImagePickerView: UIViewControllerRepresentable {
    class Coordinator {
        init() {}
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        return UIImagePickerController()
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        return
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
}
