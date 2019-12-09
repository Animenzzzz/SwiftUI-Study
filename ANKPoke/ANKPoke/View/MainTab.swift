//
//  MainTab.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/12/6.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import SwiftUI

struct MainTab: View {
    var body: some View {
        TabView{
            
            PokemonRootView().tabItem{
                Image(systemName: "list.bullet.below.rectangle")
                Text("列表")
            }
            
            SettingRootView().tabItem{
                Image(systemName: "gear")
                Text("设置")
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
    }
}
