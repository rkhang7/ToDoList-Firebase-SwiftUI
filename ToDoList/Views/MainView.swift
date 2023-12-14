//
//  ContentView.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import SwiftUI

struct MainView: View {
    @StateObject  var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSigned, !viewModel.currentUserId.isEmpty{
            ToDoListView()
        }
        else{
            LoginView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
