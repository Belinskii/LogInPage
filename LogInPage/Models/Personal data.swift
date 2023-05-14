//
//  Personal data.swift
//  LogInPage
//
//  Created by Марина Иванова on 14.05.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
}

enum Person {
    case randy
    
    var name: String {
        switch self {
            case .randy: return "Рэнди Марш"
        }
    }
    var birthday: String {
        switch self {
            case .randy: return "1 марта"
        }
    }
    var age: String {
        switch self {
            case .randy: return "Нет данных"
        }
    }
    var job: String {
        switch self {
            case .randy: return "В настоящее время фермер, в прошлом - геолог"
        }
    }
    var familyStatus: String {
        switch self {
            case .randy: return "Женат на Шерон Марш"
        }
    }
    var kids: String {
        switch self {
            case .randy: return "Сын Стэн и дочь Шелли"
        }
    }
    var bio: String {
        switch self {
            case .randy: return """
                Рэнди - единственный ученый в Саус-Парке, он является обладателем Нобелевской премии.
                В юности Рэнди был участником популярной мальчиковой группы, ради которой он бросил город и школу. Позже, когда группа распалась, он вернулся в Саус-Парк, где ему пришлось терпеть унижения жителей города.
                Несмотря на свою ученую степень, Рэнди, пожалуй, самый инфантильный из взрослых персонажей и во многом напоминает подростка. Также он легко поддается влиянию СМИ и частенько совершает невероятно глупые поступки, демонстрируя при этом порядочное тупоумие.
           """
        }
    }
}

let randy = User(login: "User", password: "Password", person: .randy)
