//
//  RegisterView.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack{
            HeaderView(titile: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form{
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                
                TextField("Email address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                TLButton(titile: "Create Account", background: .green, action: {
                    viewModel.register()
                })
            }
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
