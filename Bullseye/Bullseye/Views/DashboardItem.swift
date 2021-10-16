//
//  DashboardItem.swift
//  Bullseye
//
//  Created by Shimon Azulay on 30/04/2021.
//

import SwiftUI

struct DashboardItem: View {
    let title: String
    var content: String
    var body: some View {
        VStack(spacing: 5.0) {
            Text(title.uppercased())
                .bold()
                .foregroundColor(Color("TextColor"))
                .kerning(1.5)
                .font(.caption)
            Text(content)
                .bold()
                .foregroundColor(Color("TextColor"))
                .kerning(-0.2)
                .font(.title3)
                .frame(width: 68.0, height: 56.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 21.0)
                        .stroke(lineWidth: 2.0)
                        .foregroundColor(Color("ButtonStrokeColor"))
                )
        }
    }
}

struct DashboardItem_Previews: PreviewProvider {
    static var previews: some View {
        DashboardItem(title: "Title", content: "100")
        DashboardItem(title: "Title", content: "100")
            .preferredColorScheme(.dark)
    }
}
