//
//  ContentView.swift
//  ListOfPeople
//
//  Created by Maxim Gridenko on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ContactsView(persons: Person.getPersons())
                .tabItem {
                    Label("Contacts", systemImage: "person.2.fill")
                }
            NumbersView(persons: Person.getPersons())
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
