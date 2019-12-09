//
//  LoginRequest.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/12/9.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import Foundation
import Combine

struct LoginReq {
    let email:String
    let password:String
    
    var publisher:AnyPublisher<User,AppError>{
        Future { promise in
            DispatchQueue.global().asyncAfter(deadline: .now() + 1.5) {
                if self.password == "password"{
                    let user = User(email: self.email, favoritePokemonIDs: [])
                    promise(.success(user))
                }else{
                    promise(.failure(.passwordWrong))
                }
            }
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}
