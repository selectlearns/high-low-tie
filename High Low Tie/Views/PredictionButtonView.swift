//
//  PredictionButtonView.swift
//  High Low Tie
//
//  Created by SelectAll on 3/18/21.
//

import SwiftUI

struct PredictionButtonView: View {
    @EnvironmentObject var viewModel: GameViewModel
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(0..<viewModel.validPredictions.count) { index in
                let prediction = viewModel.validPredictions[index]
                Button {
                    print(prediction.rawValue)
                    viewModel.makePrediction(prediction)
                } label: {
                    ButtonLabelView(text: prediction.rawValue)
                }
                Spacer()
            }
        }
    }
}

struct PredictionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PredictionButtonView()
            .environmentObject(GameViewModel(gameMode: .single))
    }
}
