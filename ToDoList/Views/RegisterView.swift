//
//  RegisterView.swift
//  ToDoList
//
//  Created by Khang on 12/12/2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            HeaderView(titile: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
