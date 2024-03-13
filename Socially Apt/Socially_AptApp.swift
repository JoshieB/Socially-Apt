//
//  Socially_AptApp.swift
//  Socially Apt
//
//  Created by Joshua Butler on 3/9/24.
//

import SwiftUI
import Firebase

@main
struct Socially_AptApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
