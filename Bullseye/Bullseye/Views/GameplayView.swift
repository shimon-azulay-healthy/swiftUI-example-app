//
//  ContentView.swift
//  Bullseye
//
//  Created by Shimon Azulay on 27/04/2021.
//

import SwiftUI

struct GameplayView: View {
    @State private var isAlertDisplayed = false
    @State private var sliderValue = 50.0
    @State private var gameplayModel = GameplayModel()
    var body: some View {
        ZStack {
            GameDashboard(gameplayModel: $gameplayModel)
            VStack {
                InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
                TargetText(text: String(gameplayModel.target))
                    .padding(.bottom, isAlertDisplayed ? 10.0 : 80.0)
                if !isAlertDisplayed {
                    GameplayButton(text: "Hit me",
                                   isAlertDisplayed: $isAlertDisplayed,
                                   sliderValue: $sliderValue,
                                   gameplayModel: $gameplayModel)
                }
                if isAlertDisplayed {
                    ScoreAlertView(title: "The sliders value is",
                                   sliderValue: Int(sliderValue.rounded()),
                                   buttonText: "Start New Round",
                                   isAlertDisplayed: $isAlertDisplayed,
                                   gameplayModel: $gameplayModel)
                }
            }
            if !isAlertDisplayed {
                GameSlider(minValue: 1.0, value: $sliderValue, maxValue: 100.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameplayView()
        GameplayView()
            .preferredColorScheme(.dark)
            
    }
}
