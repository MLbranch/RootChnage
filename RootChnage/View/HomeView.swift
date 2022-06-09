//
//  HomeView.swift
//  RootChnage
//
//  Created by Qazi Ammar Arshad on 09/06/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
            
            Button  {
                RootController.auth.send(false)
            } label: {
                Text("Logout")
            }.padding()

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
