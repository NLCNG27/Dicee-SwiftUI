//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Nguyen Lam on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding(. horizontal)
                
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
            
            
        }
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

#Preview {
    ContentView()
}


