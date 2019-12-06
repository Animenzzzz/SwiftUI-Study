//
//  PokemonInfoPanel.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/11/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import SwiftUI

struct PokemonInfoPanel: View {
    
    let model:PokemonViewModel
    
    var ability:[AbilityViewModel]{
        AbilityViewModel.sample(pokemonID: model.id)
    }
    
    var topIndicator:some View{
        RoundedRectangle(cornerRadius: 3)
            .frame(width:40, height: 6)
            .opacity(0.2)
    }
    
    var body: some View {
        VStack (spacing:20){
            topIndicator
            Header(model:model)
            pokemanDescrp
            AbilityList(model: model, abilityModel: ability)
        }
        .padding(EdgeInsets(top: 12, leading: 30, bottom: 30, trailing: 30))
        .blurBackground(style: .systemMaterial)
        .cornerRadius(20)
        .fixedSize(horizontal: false, vertical: true)
        
    }
    
    var pokemanDescrp:some View{
        Text(model.descriptionText)
            .font(.callout)
            .foregroundColor(Color(hex:0x666666))
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct PokemonInfoPanel_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanel(model: .sample(id: 1))
    }
}
