//
//  ContactsView.swift
//  ListOfPeople
//
//  Created by Maxim Gridenko on 26.12.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {

            NavigationView {
                List(persons) { person in
                    NavigationLink(destination: DetailView(person: person)) {
                        Text(person.fullName)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Contacts")
            }
        }
    }
    


//#Preview {
//    ContactsView()
//}
