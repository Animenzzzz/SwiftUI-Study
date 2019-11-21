//
//  PokemonInfoPanelHeader.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/11/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import SwiftUI


extension PokemonInfoPanel{
    struct Header:View {
        
        let model:PokemonViewModel
        
        var body: some View{
            HStack(spacing:18){
                pokemonIcon
                nameInfo
                separaLine
                VStack {
                    bodyStatus
                    typeInfo
                }
            }
        }
        
        var typeInfo:some View{
            HStack {
                ForEach(self.model.types){ type in
                    ZStack{
                        RoundedRectangle(cornerRadius: 7)
                            .fill(type.color)
                            .frame(width:36,height: 14)
                            
                        Text(type.name)
                            .foregroundColor(Color.white)
                            .font(.system(size:10))
                    }
                }
            }
        }
        
        var separaLine:some View{
            RoundedRectangle(cornerRadius: 1)
                .frame(width:1,height: 44)
                .opacity(0.1)
        }
        
        var bodyStatus:some View{
            VStack {
                HStack {
                    Text("身高")
                        .font(.system(size:11))
                        .foregroundColor(Color.gray)
                    Text(model.height)
                        .font(.system(size:11))
                        .foregroundColor(model.color)
                }
                
                HStack {
                    Text("体重")
                        .font(.system(size:11))
                        .foregroundColor(Color.gray)
                    Text(model.weight)
                        .font(.system(size:11))
                        .foregroundColor(model.color)
                }
            }
        }
        
        var nameInfo:some View{
            VStack {
                Text(model.name)
                    .font(.system(size:22))
                    .fontWeight(.bold)
                    .foregroundColor(model.color)
                Text(model.nameEN)
                    .font(.system(size:13))
                    .fontWeight(.bold)
                    .foregroundColor(model.color)
                Text(model.genus)
                    .font(.system(size:13))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(.top,10)
            }
        }
        
        
        var pokemonIcon:some View{
            Image("Pokemon-\(model.id)")
                .resizable()
                .frame(width:68,height: 68)
        }
    }
}


struct PokemonInfoPanelHeader_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanel.Header(model: .sample(id: 1))
    }
}
