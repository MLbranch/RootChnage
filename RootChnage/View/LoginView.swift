//
//  LoginView.swift
//  RootChnage
//
//  Created by Qazi Ammar Arshad on 09/06/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name = ""
    @State private var email = ""
    
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("name", text: $name)
                .frame(height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
                    .padding(-3)
                )
                
            
            TextField("Email", text: $email)
                .frame(height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
                    .padding(-3)
                )
            
            Button {
                RootController.auth.send(true)
            } label: {
                Text("Login")
            }.padding()

            
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
