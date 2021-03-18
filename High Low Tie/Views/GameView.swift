//
//  GameView.swift
//  High Low Tie
//
//  Created by SelectAll on 3/14/21.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel: GameViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                HStack {
                    Text("\(viewModel.cardNumber)/\(viewModel.numberOfCards)")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                    Text("Score: \(viewModel.score)")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                CardView(cardImageNames: viewModel.lastCardImageNames)
                Spacer()
                Spacer()
                Text("The next card will be...")
                    .font(.title2)
                    .bold()
                    .padding()
                
                Spacer()
                PredictionButtonView()
            }
            .foregroundColor(GameColor.text)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(score: viewModel.score, gameMode: viewModel.gameMode, cardImageNames: viewModel.lastCardImageNames)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
        )
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GameViewModel(gameMode: .single))
    }
}
