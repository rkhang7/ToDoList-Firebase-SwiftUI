//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject{
    @Published var showNewItemView = false
    private let userId: String
    init(userId: String){
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
