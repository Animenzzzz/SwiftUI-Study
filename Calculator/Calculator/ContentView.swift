//
//  ContentView.swift
//  Calculator
//
//  Created by Animenzzz on 2019/11/19.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        CalculatorButtonPad()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}

struct CalculatorButton: View {
    
    let fontSize:CGFloat = 38
    let title:String
    let size:CGSize
    let backgroundColorName:String
    let action:()->Void
    
    var body: some View {

        Button(action: action){
            Text(title)
                .font(.system(size:fontSize))
                .foregroundColor(.white)
                .frame(width:size.width,height:size.height)
                .background(Color(backgroundColorName))
                .cornerRadius(size.width/2)
        }
    }
}

struct CalculatorButtonRow: View{
    let row:[CalculatorButtonItem]
    var body: some View {
    
        HStack {
            ForEach(row,id:\.self){ item in
                CalculatorButton(title: item.title, size: item.size, backgroundColorName: item.backgroundColorName, action: {
                    print("button click:\(item.title)")
                })
            }
        }
    }
}

struct CalculatorButtonPad: View{
    let pad:[[CalculatorButtonItem]] = [[.command(.clear),.command(.flip),.command(.percent),.op(.divide)],[.digit(7),.digit(8),.digit(9),.op(.multiply)],[.digit(4),.digit(5),.digit(6),.op(.minus)],[.digit(1),.digit(2),.digit(3),.op(.plus)],[.digit(0),.dot,.op(.equal)]]
    var body: some View {
    
        VStack (spacing:8){
            ForEach(pad,id:\.self){ item in
                CalculatorButtonRow(row: item)
            }
        }
    }
}
