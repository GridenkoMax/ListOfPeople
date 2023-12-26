//
//  NumbersView.swift
//  ListOfPeople
//
//  Created by Maxim Gridenko on 26.12.2023.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]

    var body: some View {
        
        NavigationView{
            List {
                ForEach(persons, id: \.id) { person in
                    Section(header: Text(person.fullName)) {
                        Label("Email: \(person.names)\(person.emails)", systemImage: "envelope")
                        Label("Phone:  \(person.phoneNumbers)", systemImage: "phone.fill")
                        
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
    }

//#Preview {
//    NumbersView()
//}
