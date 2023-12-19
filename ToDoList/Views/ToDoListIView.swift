//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
   
    init(userId: String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    ToDoListItemView(item: item).swipeActions(content: {
                        Button("Delete", action: {
                            viewModel.delete(id: item.id)
                        })
                        .tint(.red)
                    })
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button(action:{
                    viewModel.showNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showNewItemView){
                NewItemView(newItemPresented: $viewModel.showNewItemView)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "bNZEQ7qQC5SHkYnNgTVVeWlOKGi2")
    }
}
