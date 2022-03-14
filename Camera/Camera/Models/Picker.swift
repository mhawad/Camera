//
//  Picker.swift
//  Camera
//
//  Created by Mirna Helmy on 3/14/22.
//
import UIKit


enum Picker {
    enum Source: String {
        case library, camera
    }
    
    static func checkPermissions() -> Bool {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            return true
        } else {
            return false
        }
    }
    
}
