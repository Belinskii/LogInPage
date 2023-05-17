//
//  Personal data.swift
//  LogInPage
//
//  Created by Марина Иванова on 14.05.2023.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "u", password: "p", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let birthday: String
    let age: String
    let job: String
    let familyStatus: String
    let kids: String
    let bio: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
        
        static func getPerson() -> Person {
            Person(name: "Рэнди",
                   surname: "Марш",
                   photo: "randy",
                   birthday: "1 марта",
                   age: "Нет данных",
                   job: "В настоящее время фермер, в прошлом - геолог",
                   familyStatus: "Женат на Шерон Марш",
                   kids: "Сын Стэн и дочь Шелли",
                   bio: """
                Рэнди - единственный ученый в Саус-Парке, он является обладателем Нобелевской премии.
                В юности Рэнди был участником популярной мальчиковой группы, ради которой он бросил город и школу. Позже, когда группа распалась, он вернулся в Саус-Парк, где ему пришлось терпеть унижения жителей города.
                Несмотря на свою ученую степень, Рэнди, пожалуй, самый инфантильный из взрослых персонажей и во многом напоминает подростка. Также он легко поддается влиянию СМИ и частенько совершает невероятно глупые поступки, демонстрируя при этом порядочное тупоумие.
           """)
        }
    }
