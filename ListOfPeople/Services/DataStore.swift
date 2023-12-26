//
//  DataStore.swift
//  ListOfPeople
//
//  Created by Maxim Gridenko on 26.12.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "John",
        "Mary",
        "David",
        "Linda",
        "Michael",
        "Susan",
        "Robert",
        "Karen",
        "William",
        "Patricia"
    ]
    let surnames = [
        "Smith",
        "Johnson",
        "Williams",
        "Brown",
        "Jones",
        "Miller",
        "Davis",
        "Garcia",
        "Rodriguez",
        "Martinez"
    ]
    let emails = [
        "@gmail.com",
        "@yahoo.com",
        "@outlook.com",
        "@icloud.com",
        "@hotmail.com",
        "@aol.com",
        "@mail.com",
        "@yandex.ru",
        "@rambler.ru",
        "@hotmail.com"
    ]
    let phoneNumbers = [
        "+23455",
        "+782238",
        "+5346456",
        "+24522",
        "+99999",
        "+79379992",
        "+06453",
        "+1231343",
        "+7643955",
        "+791999999"
    ]
    private init () {}
}
