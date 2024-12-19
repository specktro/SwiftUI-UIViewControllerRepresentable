//
//  ContentView.swift
//  UIViewControllerRepresentableProject
//
//  Created by specktro on 19/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePickerView: Bool = false
    var body: some View {
        VStack {
            Text("Choose and Image!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    showImagePickerView = true
                }
                .padding()
            Spacer()
        }
        .sheet(isPresented: $showImagePickerView) {
            Text("This will be and Image Picker view soon!")
        }
    }
}

#Preview {
    ContentView()
}
