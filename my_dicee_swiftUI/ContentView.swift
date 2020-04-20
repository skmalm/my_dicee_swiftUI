//
//  ContentView.swift
//  my_dicee_swiftUI
//
//  Created by Sebastian Malm on 4/18/20.
//  Copyright © 2020 SebastianMalm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            // Using gradient as learning tool (instead of image)
            LinearGradient(
                gradient: Gradient(colors: [Color("TableLightGreen"), Color("TableDarkGreen")]),
                startPoint: .top,
                endPoint: .bottom
            ).edgesIgnoringSafeArea(.all)
//            Image("GreenBackground")
//                .resizable()
//                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }.padding(.horizontal, 30.0)
                Spacer()
                Button(action: roll, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    }).background(Color("BrandRed"))
            }
        }
    }
    
    func roll() {
        leftDiceNumber = Int.random(in: 1...6)
        rightDiceNumber = Int.random(in: 1...6)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    static let imageNames = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    var number: Int
    
    var body: some View {
        Image(DiceView.imageNames[number - 1])
        .resizable()
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
    
    init(number: Int) {
        self.number = number
    }
}
