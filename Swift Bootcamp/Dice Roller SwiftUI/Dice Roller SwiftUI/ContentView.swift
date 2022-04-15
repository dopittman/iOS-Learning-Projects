//
//  ContentView.swift
//  Dice Roller SwiftUI
//
//  Created by David Pittman on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceVal = 1
    @State var rightDiceVal = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceVal)
                    DiceView(n: rightDiceVal)
                }
                .padding(.horizontal)
                Spacer()
                Button( action:{
                    self.leftDiceVal = Int.random(in: 1...6)
                    self.rightDiceVal = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 40, weight: .heavy))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
