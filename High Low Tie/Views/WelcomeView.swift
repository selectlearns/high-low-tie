//
//  WelcomeView.swift
//  High Low Tie
//
//  Created by SelectAll on 3/18/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Text("High Low Tie")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select a game mode, then predict the values of the next cards.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    HStack {
                        Spacer()
                        ForEach(GameMode.allCases, id: \.self) { gameMode in
                            NavigationLink(
                                destination: GameView(viewModel: GameViewModel(gameMode: gameMode)),
                                label: {
                                    ButtonLabelView(text: gameMode.rawValue)
                                })
                            Spacer()
                        }
                    }
                }
                .foregroundColor(GameColor.text)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
