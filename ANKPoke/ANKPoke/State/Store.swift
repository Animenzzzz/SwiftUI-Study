//
//  Store.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/12/9.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import Foundation
import Combine

class Store:ObservableObject{
    
    @Published var appState = AppState()
}
