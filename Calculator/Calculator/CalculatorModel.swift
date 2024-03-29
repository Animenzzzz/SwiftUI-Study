//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Animenzzz on 2019/11/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class CalculatorModel:ObservableObject{
    
//    let objectWillChange = PassthroughSubject<Void, Never>()
//    var brain:CalculatorBrain = .left("0"){
//        willSet { objectWillChange.send() }
//    }
    
    @Published var brain:CalculatorBrain = .left("0")
    
    @Published var history:[CalculatorButtonItem] = []
    
    func apply(_ item:CalculatorButtonItem) {
        brain = brain.apply(item: item)
        history.append(item)
        
        temporaryKept.removeAll()
        slidingIndex = Float(totalCount)
    }
    
    // 1
      var historyDetail: String {
        history.map { $0.description }.joined()
      }
      
      // 2
      var temporaryKept: [CalculatorButtonItem] = []
      
      // 3
      var totalCount: Int {
        history.count + temporaryKept.count
      }

      // 4
      var slidingIndex: Float = 0 {
        didSet {
          // 5
          // 维护 `history` 和 `temporaryKept`
            keepHistory(upTo: Int(slidingIndex))
        }
      }
    
    func keepHistory(upTo index:Int) {
        precondition(index <= totalCount, "out of index.")
        
        let total = history + temporaryKept
        
        history = Array(total[..<index])
        temporaryKept = Array(total[..<index])
        
        brain = history.reduce(CalculatorBrain.left("0")){
            result,item in
            result.apply(item: item)
        }
    }

}
