//
//  ContactLixtSwiftUIApp.swift
//  ContactLixtSwiftUI
//
//  Created by Лилия Андреева on 26.12.2023.
//

import SwiftUI

@main
struct ContactLixtSwiftUIApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(persons: Person.getPerson())
        }
    }
}
