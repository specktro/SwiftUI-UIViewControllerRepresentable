//
//  ContentView.swift
//  UIViewControllerRepresentableProject
//
//  Created by specktro on 19/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePickerView: Bool = false
    @State private var selectedImage: UIImage?
    
    var imageView: Image {
        guard let selectedImage = selectedImage else {
            return Image(systemName: "photo")
        }
        
        return Image(uiImage: selectedImage)
    }
    
    var body: some View {
        VStack {
            Text("Choose and Image!")
                .font(.largeTitle)
                .padding()
            Spacer()
            imageView
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    showImagePickerView = true
                }
                .padding()
            Spacer()
        }
        .sheet(isPresented: $showImagePickerView) {
            ImagePickerView()
        }
    }
}

#Preview {
    ContentView()
}
