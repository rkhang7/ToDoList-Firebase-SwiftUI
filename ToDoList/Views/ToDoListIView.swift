//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    init(userId: String){
        self.userId = userId
    }
    var body: some View {
        NavigationView{
            VStack{
                
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
        ToDoListView(userId: "")
    }
}
