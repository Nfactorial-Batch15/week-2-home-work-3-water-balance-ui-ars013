//
//  TabV.swift
//  HW6
//
//  Created by Арслан on 13.12.2021.
//

import SwiftUI

struct TabV: View {
    @State private var selectedTab: Int = 2
    
    init() {
            let tabBarAppeareance = UITabBarAppearance()
            tabBarAppeareance.backgroundColor = .white
            UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    
    var body: some View {
        TabView(selection: $selectedTab){
            Main1()
//            Main2()
            Settings()
            History()
        }.accentColor(.blue)
            .ignoresSafeArea()
    }
}

struct TabV_Previews: PreviewProvider {
    static var previews: some View {
        TabV()
    }
}
