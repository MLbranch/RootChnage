//
//  ContentView.swift
//  RootChnage
//
//  Created by Qazi Ammar Arshad on 09/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLogin = UserDefaults.standard.bool(forKey: "auth")
    
    var body: some View {
        
        Group {
            isLogin ? AnyView(TabController()) : AnyView(LoginView())
        }
        .onReceive(RootController.auth) { newValue in
            isLogin = newValue
            UserDefaults.standard.set(newValue, forKey: "auth")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
