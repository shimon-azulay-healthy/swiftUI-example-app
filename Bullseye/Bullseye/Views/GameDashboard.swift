//
//  GameDashboard.swift
//  Bullseye
//
//  Created by Shimon Azulay on 30/04/2021.
//

import SwiftUI

struct GameDashboard: View {
    @Binding var gameplayModel: GameplayModel
    var body: some View {
        VStack {
            TopView(gameplayModel: $gameplayModel)
            Spacer()
            BottomView(score: String(gameplayModel.score),
                       round: String(gameplayModel.round))
        }
        .padding()
        .background(
            GameDashbordBackground()
        )
    }
}

struct GameDashbordBackground: View {
    var body: some View {
        ZStack {
            Color("BoardGameColor")
                .edgesIgnoringSafeArea(.all)
            ForEach(1..<6) { ring in
                let size = CGFloat(ring * 100)
                Circle()
                    .stroke(lineWidth: 20.0)
                    .fill(RadialGradient(gradient: Gradient(colors: [Color("RingColor").opacity(0.3 * 0.8),
                                                                     Color("RingColor").opacity(0)]),
                                         center: .center,
                                         startRadius: 100,
                                         endRadius: 300))
                    .frame(width: size, height: size)
            }
        }
    }
}

struct TopView: View {
    @Binding var gameplayModel: GameplayModel
    @State private var isLeaderBoardShowed = false
    var body: some View {
        HStack {
            Button(action: {
                gameplayModel.restartGame()
            }) {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            }
            Spacer()
            Button(action: {
                isLeaderBoardShowed = true
            }) {
                RoundedImageViewFilled(systemName: "list.dash")
            }.sheet(isPresented: $isLeaderBoardShowed,
                    onDismiss: {},
                    content: {
                        LeaderboardView(leaderboardData: gameplayModel.leaderboadrdEntries, isLeaderboardShown: $isLeaderBoardShowed)
                    })
        }
    }
}

struct BottomView: View {
    var score: String
    var round: String
    var body: some View {
        HStack {
            DashboardItem(title: "Score", content: score)
            Spacer()
            DashboardItem(title: "Round", content: round)
        }
    }
}



struct GameDashboard_Previews: PreviewProvider {
    static var previews: some View {
        GameDashboard(gameplayModel: .constant(GameplayModel()))
        GameDashboard(gameplayModel: .constant(GameplayModel()))
            .preferredColorScheme(.dark)
    }
}
