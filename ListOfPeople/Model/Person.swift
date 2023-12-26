//
//  Person.swift
//  ListOfPeople
//
//  Created by Maxim Gridenko on 26.12.2023.
//

import Foundation



struct Person: Identifiable {
    let id = UUID()
    var names: String
    var surnames: String
    var emails: String
    var phoneNumbers: String
    var fullName: String {
           return "\(names) \(surnames)"
       }
    static func getPersons() -> [Person]{
        var persons: [Person] = []
        
        let getNames = DataStore.shared.names.shuffled()
        let getSurnames = DataStore.shared.surnames.shuffled()
        let getEmails = DataStore.shared.emails.shuffled()
        let getPhoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        for i in 0..<DataStore.shared.names.count {
            let person = Person(
                names: getNames[i],
                surnames: getSurnames[i],
                emails: getEmails[i],
                phoneNumbers: getPhoneNumbers[i]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
