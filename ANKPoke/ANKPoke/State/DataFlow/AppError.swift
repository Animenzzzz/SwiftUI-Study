//
//  AppError.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/12/9.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import Foundation

enum AppError:Error,Identifiable{
    
    var id:String{ localizedDescription }

    case passwordWrong
}

extension AppError:LocalizedError{
    var localizedDescription: String{
        switch self {
        case .passwordWrong:
            return "密码错误"
        }
    }
}
