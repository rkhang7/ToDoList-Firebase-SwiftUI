//
//  TLButton.swift
//  ToDoList
//
//  Created by Khang on 13/12/2023.
//

import SwiftUI

struct TLButton: View {
    let titile: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(titile)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(titile: "a", background: .accentColor, action: {
            
        })
    }
}
