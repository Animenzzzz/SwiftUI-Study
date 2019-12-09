//
//  User.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/12/9.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import Foundation

struct User :Codable{
    var email:String
    var favoritePokemonIDs:Set<Int>
    
    func isFavoritePokemon(id:Int) -> Bool {
        
        favoritePokemonIDs.contains(id)
    }
}
