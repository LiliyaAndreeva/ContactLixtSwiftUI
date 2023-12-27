//
//  ContactRowView.swift
//  ContactLixtSwiftUI
//
//  Created by Лилия Андреева on 26.12.2023.
//

import SwiftUI


struct ContactRowView: View {
    let person: Person
    
    var body: some View {
            Text(person.fullName)
    }
}

#Preview {
    ContactRowView(person: Person.getPerson().first!)
}
