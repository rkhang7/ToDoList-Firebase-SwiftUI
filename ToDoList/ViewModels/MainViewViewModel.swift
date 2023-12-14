//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import Foundation
import FirebaseAuth


class MainViewViewModel : ObservableObject{
    @Published var currentUserId: String = ""
    private var hanlder : AuthStateDidChangeListenerHandle?
    
    init() {
        self.hanlder = Auth.auth().addStateDidChangeListener{[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSigned : Bool{
        return Auth.auth().currentUser != nil
    }
}
