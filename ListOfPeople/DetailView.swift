//
//  DetailView.swift
//  ListOfPeople
//
//  Created by Maxim Gridenko on 26.12.2023.
//

import SwiftUI

struct DetailView: View {
    let person: Person

    var body: some View {
        
        ZStack{
            Image(systemName: "person")
                .resizable()
                .frame(width: 250, height: 250)
                .opacity(0.1)
            
            VStack {
                Label("Email: \(person.names)\(person.emails)", systemImage: "envelope")
                Label("Phone: \(person.phoneNumbers)", systemImage: "phone.fill")
             Spacer()
            }
            .font(.headline)
            .padding()
            .navigationBarTitle(person.fullName)
            Spacer()
        }
    }
}

//#Preview {
//    DetailView()
//}
