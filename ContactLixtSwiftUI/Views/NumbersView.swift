//
//  NumbersView.swift
//  ContactLixtSwiftUI
//
//  Created by Лилия Андреева on 26.12.2023.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header:
                            Text(person.fullName)) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundStyle(.blue)
                        Text(person.phone)
                    }
                    HStack {
                        Image(systemName: "mail")
                            .foregroundStyle(.blue)
                        Text(person.email)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}


#Preview {
    NumbersView(persons: Person.getPerson())
}
