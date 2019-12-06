//
//  PokemonRootView.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/12/6.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import SwiftUI

struct PokemonRootView: View {
    var body: some View {
        NavigationView {
            PokemonList().navigationBarTitle("宝可梦列表")
        }
        
    }
}

struct PokemonRootView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRootView()
    }
}
