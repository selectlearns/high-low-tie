//
//  ButtonLabelView.swift
//  High Low Tie
//
//  Created by SelectAll on 3/18/21.
//

import SwiftUI

struct ButtonLabelView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .background(GameColor.accent)
    }
}

struct ButtonTextView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabelView(text: "Button Label")
    }
}
