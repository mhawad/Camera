//
//  ContentView.swift
//  Camera
//
//  Created by Mirna Helmy on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel
 
    var body: some View {
        NavigationView {
            VStack {
                if let image = vm.image {
                    Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(minWidth: 0,maxWidth: .infinity)
                } else {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 0,maxWidth: .infinity)
                        .opacity(0.6)
                        .padding(.horizontal)
                }
                Spacer()
                HStack {
                    Button{
                        vm.source = .camera
                        vm.showPhotoPicker()
                    } label: {
                        Text("Camera")
                    }
                    Button{
                        vm.source = .library
                        vm.showPhotoPicker()
                    } label: {
                        Text("Photos")
                    }
                }
            .sheet(isPresented: $vm.showPicker) {
                ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                    .ignoresSafeArea()
            }
   
            .navigationTitle("My Images")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
}


