//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by Shimon Azulay on 16/05/2021.
//

import SwiftUI

struct LeaderboardView: View {
    let leaderboardData: [LeaderboardEntry]
    @Binding var isLeaderboardShown: Bool
    var body: some View {
        VStack(spacing: 5.0) {
            HeaderView(isLeaderboardShown: $isLeaderboardShown)
            RowTitleView()
            ScrollView {
                ForEach(leaderboardData.indices) { idx in
                    RowView(index: idx, score: leaderboardData[idx].score, date: leaderboardData[idx].date)
                        .padding(2.0)
                }
            }
        }
    }
}

struct HeaderView: View {
    @Binding var isLeaderboardShown: Bool
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    isLeaderboardShown = false
                }) {
                    RoundedImageViewFilled(systemName: "xmark")
                }
                .padding(.top)
                .padding(.trailing)
            }
            LeaderboradTexts.Title(title: "Leaderboard")
        }
    }
}

struct RowTitleView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 56.0)
            Spacer()
            LeaderboradTexts.ColTitle(title: "Score")
                .frame(width: Constants.Leaderboard.scoreColWidth)
            Spacer()
            LeaderboradTexts.ColTitle(title: "Date")
                .frame(width: Constants.Leaderboard.dateColWidth)
        }
        .padding(.trailing)
        .padding(.leading)
    }
}

struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    var body: some View {
        HStack {
            LeaderboradTexts.RowIndex(index: index)
            Spacer()
            LeaderboradTexts.Score(score: score)
                .frame(width: Constants.Leaderboard.scoreColWidth)
            Spacer()
            LeaderboradTexts.Time(date: date)
                .frame(width: Constants.Leaderboard.dateColWidth)
        }
        .background(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(Color("LeaderboardRowColor"), lineWidth: 2.0)
        )
        .padding(.trailing)
        .padding(.leading)
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView(leaderboardData: [LeaderboardEntry(score: 100, date: Date()), LeaderboardEntry(score: 50, date: Date())], isLeaderboardShown: .constant(false))
            .previewLayout(.device)
        LeaderboardView(leaderboardData: [LeaderboardEntry(score: 100, date: Date()), LeaderboardEntry(score: 50, date: Date())], isLeaderboardShown: .constant(false))
            .preferredColorScheme(.dark)
    }
}
