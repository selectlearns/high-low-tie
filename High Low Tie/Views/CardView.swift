//
//  CardView.swift
//  High Low Tie
//
//  Created by SelectAll on 3/18/21.
//

import SwiftUI

struct CardView: View {
    let cardImageNames: [String]
    
    var body: some View {
        ZStack {
            if cardImageNames.count > 1 {
                HStack {
                    Image(cardImageNames[0])
                        .rotationEffect(.degrees(-5))
                        .padding()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image(cardImageNames[1])
                        .rotationEffect(.degrees(5))
                        .padding()
                }
            } else if cardImageNames.count == 1 {
                HStack {
                    Image(cardImageNames[0])
                        .padding()
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardImageNames: ["6C"])
            .environmentObject(GameViewModel(gameMode: .single))
    }
}
