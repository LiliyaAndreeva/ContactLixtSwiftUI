//
//  ContentView.swift
//  ContactLixtSwiftUI
//
//  Created by Лилия Андреева on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    let persons: [Person]
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView(persons: Person.getPerson())
}
