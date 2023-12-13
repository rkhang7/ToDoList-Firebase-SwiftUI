//
//  LoginView.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(titile: "To Do List", subTitle: "Get things done", angle: 15, background: .pink)
                
                // Login Form
                Form{
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password", text: $viewModel.passwordk)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(titile: "Log in", background: .blue, action: {
                        
                    })
                    
                }
                .offset(y: -50)
                
                // Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
