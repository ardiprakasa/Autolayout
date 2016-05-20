//
//  User.swift
//  AutoLayout
//
//  Created by Hardian Prakasa on 5/19/16.
//  Copyright © 2016 Ice House Corp. All rights reserved.
//

import Foundation

struct User {
    let name: String
    let company: String
    let login: String
    let password: String
    
    static func login(login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        
        return nil
    }
    
    static let database: Dictionary<String, User> = {
        var theDatabase = Dictionary<String, User>()
        for user in [
            User(name: "Steve Jobs", company: "Apple Technology Corporation", login: "jobs", password: "123"),
            User(name: "Larry Page", company: "Google Technology Corporation", login: "page", password: "123"),
            User(name: "Mark Zuckerberg", company: "Facebook Technology Corporation", login: "zuck", password: "123"),
            User(name: "Elon Musk", company: "Tesla Motor Technology Corporation", login: "musk", password: "123")
            ] {
                theDatabase[user.login] = user
        }
        return theDatabase
    }()
}