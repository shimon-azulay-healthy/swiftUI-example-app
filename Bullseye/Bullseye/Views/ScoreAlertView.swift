//
//  ScoreAlertView.swift
//  Bullseye
//
//  Created by Shimon Azulay on 05/05/2021.
//

import SwiftUI

struct ScoreAlertView: View {
    let title: String
    let sliderValue: Int
    let buttonText: String
    @Binding var isAlertDisplayed: Bool
    @Binding var gameplayModel: GameplayModel
    
    var body: some View {
        VStack {
            InstructionText(text: title)
            TargetText(text: String(sliderValue))
            ScoreAlertBodyText(text: "You scored \(gameplayModel.points(sliderValue: sliderValue)) Points\n" + "🎉🎉🎉")
            Button(action: {
                withAnimation {
                    isAlertDisplayed = false
                }
                gameplayModel.roundFinished(sliderValue: sliderValue)
            }) {
                ScoreAlertButtonText(text: buttonText)
            }
        }
        .padding()
        .background(Color("BoardGameColor"))
        .frame(maxWidth: 300.0)
        .cornerRadius(21.0)
        .shadow(radius: 10.0, x: 5.0, y: 5.0)
        .transition(.scale)
    }
}


struct ScoreAlertView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreAlertView(title: "Title",
                       sliderValue: 50,
                       buttonText: "Button",
                       isAlertDisplayed: .constant(true),
                       gameplayModel: .constant(GameplayModel()))
        ScoreAlertView(title: "Title",
                       sliderValue: 50,
                       buttonText: "Button",
                       isAlertDisplayed: .constant(true),
                       gameplayModel: .constant(GameplayModel()))
            .preferredColorScheme(.dark)
    }
}
