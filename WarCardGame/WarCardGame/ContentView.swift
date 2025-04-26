//
//  ContentView.swift
//  WarCardGame
//  first swift project
//  Created by priyanshuxd9_ on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card14"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            
                Image("green")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50){
                Image("logo")
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                HStack {
                    Spacer()
                    VStack(spacing: 15){
                        Text("Player")
                        Text(String(playerScore))
                    }.font(.title)
                    .foregroundStyle(.white)
                    Spacer()
                    VStack(spacing:15){
                        Text("CPU")
                        Text(String(cpuScore))
                    }.font(.title)
                    .foregroundStyle(.white)
                    Spacer()
                }
            }
        }
    }
    func deal(){
   //randomize player card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
    //randomize CPU card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
    //Update the scores
        if playerCardValue>cpuCardValue {
        playerScore+=1
        }
        else if playerCardValue < cpuCardValue {
            cpuScore+=1
        }
    }
}
#Preview {
    ContentView()
}
