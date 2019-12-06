//
//  PokemonInfoPanelAbilityList.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/11/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import SwiftUI

extension PokemonInfoPanel{
    
    struct AbilityList:View {
        
        let model:PokemonViewModel
        let abilityModel:[AbilityViewModel]?
        
        var body:some View{
            VStack(alignment: .leading, spacing: 12) {
                Text("技能")
                    .font(.headline)
                    .fontWeight(.bold)
                if abilityModel != nil{
                    ForEach(abilityModel!){ abili in
                        Text(abili.name)
                            .font(.subheadline)
                            .foregroundColor(self.model.color)
                        Text(abili.descriptionText)
                            .font(.footnote)
                            .foregroundColor(Color(hex:0xAAAAAA))
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            }.frame(maxWidth:.infinity,alignment: .leading)
        }
    }
}

struct PokemonInfoPanelAbilityList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanel.AbilityList(model: .sample(id: 1), abilityModel: AbilityViewModel.sample(pokemonID: 1))
    }
}
