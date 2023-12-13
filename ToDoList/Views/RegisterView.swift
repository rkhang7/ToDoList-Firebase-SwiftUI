//
//  RegisterView.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            HeaderView(titile: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form{
                TextField("Full name", text: $fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                
                TextField("Email address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(titile: "Create Account", background: .green, action: {
                    
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
