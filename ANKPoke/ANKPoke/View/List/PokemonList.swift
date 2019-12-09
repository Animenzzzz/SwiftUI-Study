//
//  PokemonList.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/11/21.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import SwiftUI

struct PokemonList: View {

    @State var expandingIndex: Int?
    @State var searchText: String = ""
    
    var body: some View {
        
        ScrollView{
            TextField("搜索",text:$searchText)
                .frame(height:40)
                .padding(.horizontal,25)
            ForEach(PokemonViewModel.all){ pokeModel in
                
                PokemonInfoRow(model: pokeModel, expanded: self.expandingIndex == pokeModel.id).onTapGesture {
                    if self.expandingIndex == pokeModel.id{
                        self.expandingIndex = nil
                    }else{
                        self.expandingIndex = pokeModel.id
                    }
                }
            }
        }
//        .overlay(
//            VStack{
//                Spacer()
//                PokemonInfoPanel(model:.sample(id: 1))
//            }.edgesIgnoringSafeArea(.bottom)
//        )
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
