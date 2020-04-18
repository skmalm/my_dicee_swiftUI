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
            LinearGradient(gradient: Gradient(colors: [Color("TableLightGreen"), Color("TableDarkGreen")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                HStack {
                    Image("DiceOne")
                        .padding(.trailing, 30.0)
                    Image("DiceTwo")
                        .padding(.leading, 30.0)
                }
                .padding(.vertical, 150.0)
                Rectangle()
                    .foregroundColor(Color("BrandRed"))
                    .frame(width: 100, height: 50)
                    .overlay(Button(action: {
                        print("You pressed roll.")
                    }, label: {
                        Text("Roll")
                            .foregroundColor(.white)
                            .font(.title)
                    }))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
