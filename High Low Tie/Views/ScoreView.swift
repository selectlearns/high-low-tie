//
//  ScoreView.swift
//  High Low Tie
//
//  Created by SelectAll on 3/18/21.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                CardView(cardImageNames: viewModel.cardImageNames)
                Spacer()
                Text("\(viewModel.gameMode.rawValue) Mode")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Spacer()
                Text("Final Score:")
                    .font(.title)
                Text("\(viewModel.score)")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("Your Record")
                    Text("Score: \(viewModel.recordScore)")
                }.font(.title2)
                Spacer()
                NavigationLink(
                    destination: WelcomeView(),
                    label: {
                        ButtonLabelView(text: "Play Again")
                    })
            }
            .foregroundColor(GameColor.text)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(score: 0, gameMode: .full, cardImageNames: ["7D", "7C"]))
    }
}
