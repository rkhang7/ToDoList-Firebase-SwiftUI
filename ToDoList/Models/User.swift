//
//  User.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import Foundation


struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
