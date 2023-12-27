//
//  PersonDetailsView.swift
//  ContactLixtSwiftUI
//
//  Created by Лилия Андреева on 26.12.2023.
//

import SwiftUI

struct PersonDetailsView: View {
    let person: Person
    
    var body: some View {
        List{
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.leading, 70)
            
            HStack{
                Image(systemName: "phone")
                    .foregroundStyle(.blue)
                Text(person.phone)
            }
            .padding(.leading, 0)
            
            HStack{
                Image(systemName: "mail")
                    .foregroundStyle(.blue)
                Text(person.email)
            }
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    PersonDetailsView(person: Person.getPerson().first!)
}
