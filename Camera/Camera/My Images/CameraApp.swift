//
//  CameraApp.swift
//  Camera
//
//  Created by Mirna Helmy on 3/14/22.
//

import SwiftUI

@main
struct CameraApp: App {
    @StateObject var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel())
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
