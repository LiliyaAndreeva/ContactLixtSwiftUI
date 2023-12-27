//
//  ContactRowView.swift
//  ContactLixtSwiftUI
//
//  Created by Лилия Андреева on 26.12.2023.
//

import SwiftUI


struct ContactRowView: View {
    @State private var isPresented = false
    
    let person: Person
    
    var body: some View {
        Button{
            isPresented.toggle()
        } label: {
            Text(person.fullName)
        }
        .sheet(isPresented: $isPresented) {
            PersonDetailsView(person: person)
        }
    }
}

#Preview {
    ContactRowView(person: Person.getPerson().first!)
}
