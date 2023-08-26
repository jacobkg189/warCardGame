//
//  ContentView.swift
//  War Card Game
//
//  Created by Jacob Gino on 8/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
   @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
            VStack {
                Image("logo")
                HStack {
                    Image(playerCard)
                        .padding()
                    Image(cpuCard)
                     
                }
                .padding()
                
                Button {
                    deal()
                    
                } label: {
                    Image("button")
                }
                
                
                
                
                VStack {
                    HStack {
                        Spacer()
                        Text("Player")
                            .font(.title)
                            .fontWeight(.regular)
                        Spacer()
                        Text("CPU")
                            .font(.title)
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .padding()
                    HStack {
                        Spacer()
                        Text(String(playerScore))
                            .font(.title)
                            .fontWeight(.regular)
                        Spacer()
                        Text(String(cpuScore))
                            .font(.title)
                            .fontWeight(.regular)
                        Spacer()
                    }
                }
                
                
                
                
            }
        }
       
        
        
    }
    
    
    func deal() {
        
        var playerCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        
        var cpuValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuValue)
        
        
       
        
        
        if playerCardValue > cpuValue {
            playerScore += 1
        }
        else if(playerCardValue < cpuValue) {
            cpuScore += 1
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
