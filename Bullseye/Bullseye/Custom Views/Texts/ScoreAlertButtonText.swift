//
//  NewRoundButtonText.swift
//  Bullseye
//
//  Created by Shimon Azulay on 03/05/2021.
//

import SwiftUI

struct ScoreAlertButtonText: View {
    let text: String
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(.white)
            .font(.headline)
            .cornerRadius(12.0)
            .padding()
    }
}

struct NewRoundButtonText_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScoreAlertButtonText(text: "Start New Round")
            ScoreAlertButtonText(text: "Start New Round")
                .preferredColorScheme(.dark)
        }
    }
}
