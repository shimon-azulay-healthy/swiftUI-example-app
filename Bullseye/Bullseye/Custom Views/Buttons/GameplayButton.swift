//
//  GameplayButton.swift
//  Bullseye
//
//  Created by Shimon Azulay on 29/04/2021.
//

import SwiftUI

struct GameplayButton: View {
    let text: String
    @Binding var isAlertDisplayed: Bool
    @Binding var sliderValue: Double
    @Binding var gameplayModel: GameplayModel
    
    var body: some View {
        Button(action: {
            withAnimation {
                isAlertDisplayed = true
            }
        }) {
            Text(text.uppercased())
                .bold()
                .font(.title3)
        }
        .foregroundColor(.white)
        .padding(20.0)
        .background(
            ZStack {
                Color("HitMeButtonColor")
                LinearGradient(gradient: .init(colors: [Color.white.opacity(0.3),
                                                        Color.clear]),
                               startPoint: .top,
                               endPoint: .bottom)
            }
        )
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 3.0)
        )
        .transition(.scale)
    }
}

struct GameplayButton_Previews: PreviewProvider {
    static var previews: some View {
        GameplayButton(text: "Hit me",
                       isAlertDisplayed: .constant(true),
                       sliderValue: .constant(50.0),
                       gameplayModel: .constant(GameplayModel()))
        GameplayButton(text: "Hit me",
                       isAlertDisplayed: .constant(true),
                       sliderValue: .constant(50.0),
                       gameplayModel: .constant(GameplayModel()))
            .preferredColorScheme(.dark)
    }
}
