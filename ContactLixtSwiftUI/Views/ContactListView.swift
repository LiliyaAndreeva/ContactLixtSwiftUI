//
//  ContactListView.swift
//  ContactLixtSwiftUI
//
//  Created by Лилия Андреева on 26.12.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(
                    destination: PersonDetailsView(person: person)) {
                        ContactRowView(person: person)
                    }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}



#Preview {
    ContactListView(persons: Person.getPerson())
}
