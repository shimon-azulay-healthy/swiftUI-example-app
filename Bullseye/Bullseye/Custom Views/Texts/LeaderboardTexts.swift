//
//  LeaderboardRowTitleText.swift
//  Bullseye
//
//  Created by Shimon Azulay on 16/05/2021.
//

import SwiftUI

enum LeaderboradTexts {
    private struct Cell: View {
        let text: Text
        var body: some View {
            text
                .bold()
                .kerning(-0.2)
                .foregroundColor(Color("TextColor"))
                .font(.title3)
        }
    }
    
    struct Title: View {
        let title: String
        var body: some View {
            Text(title.uppercased())
                .kerning(2.0)
                .foregroundColor(Color("TextColor"))
                .font(.title)
                .fontWeight(.black)
        }
    }
    
    struct ColTitle: View {
        let title: String
        var body: some View {
            Text(title.uppercased())
                .bold()
                .kerning(1.5)
                .foregroundColor(Color("TextColor"))
                .font(.caption)
        }
    }
    
    struct Round: View {
        let round: Int
        var body: some View {
            Cell(text: Text(String(round)))
        }
    }
    
    struct Score: View {
        let score: Int
        var body: some View {
            Cell(text: Text(String(score)))
        }
    }
    
    struct Time: View {
        let date: Date
        var body: some View {
            Cell(text: Text(date, style: .time))
        }
    }
    
    struct RowIndex: View {
        let index: Int
        var body: some View {
            Cell(text: Text(String(index)))
                .frame(width: 56.0, height: 56.0)
                .overlay(
                    Circle()
                        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                )
        }
    }
}

struct LeaderboardRowTitleText_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LeaderboradTexts.Title(title: "Leaderboard")
            LeaderboradTexts.ColTitle(title: "Title")
            LeaderboradTexts.Score(score: 50)
            LeaderboradTexts.Time(date: Date())
            LeaderboradTexts.RowIndex(index: 1)
        }
    }
}
