//
//  ContentView.swift
//  my_dicee_swiftUI
//
//  Created by Sebastian Malm on 4/18/20.
//  Copyright © 2020 SebastianMalm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Using gradient as learning tool (instead of image)
            LinearGradient(gradient: Gradient(colors: [Color("TableLightGreen"), Color("TableDarkGreen")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
//            Image("GreenBackground")
//                .resizable()
//                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView()
                    DiceView()
                }
                    .padding(.horizontal, 30.0)
                Spacer()
                Button(action: roll, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    })
                        .background(Color("BrandRed"))
            }
        }
    }
    
    func roll() {
        print("You pressed roll.")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    static let imageNames = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    var body: some View {
        Image(DiceView.imageNames.randomElement()!)
        .resizable()
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}
