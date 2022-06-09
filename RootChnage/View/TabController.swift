//
//  TabController.swift
//  RootChnage
//
//  Created by Qazi Ammar Arshad on 09/06/2022.
//

import SwiftUI

struct TabController: View {
    var body: some View {

        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gear")
                }
        }
        
    }
}

struct TabController_Previews: PreviewProvider {
    static var previews: some View {
        TabController()
    }
}
