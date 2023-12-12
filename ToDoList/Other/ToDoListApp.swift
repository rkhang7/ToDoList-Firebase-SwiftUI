//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import SwiftUI
import FirebaseCore
@main
struct ToDoListApp: App {
    
    init(){ 
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
