//
//  AppState.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/12/9.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import Foundation

struct AppState{
    
    var settings = Settings()
}

extension AppState{
    
    struct Settings {
        
        enum Sorting:CaseIterable {
            case id, name, color, favorite
        }
        
        enum AccountBehavior:CaseIterable {
            case register, login
        }
        
        var showEnglishName = true
        var sorting = Sorting.id
        var showFavoriteOnly = false
        
        var accountBehavior = AccountBehavior.login
        var email = ""
        var password = ""
        var verifyPassword = ""
    }
}
