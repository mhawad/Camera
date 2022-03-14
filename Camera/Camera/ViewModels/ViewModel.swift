//
//  ViewModel.swift
//  Camera
//
//  Created by Mirna Helmy on 3/14/22.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var image: UIImage?
    @Published var showPicker = false
    @Published var source: Picker.Source = .library
    
    
    func showPhotoPicker() {

            if source == .camera {
                if !Picker.checkPermissions() {
                    print("There is no camera on this device")
                    return
                }
            }
            showPicker = true
            
    }
}
