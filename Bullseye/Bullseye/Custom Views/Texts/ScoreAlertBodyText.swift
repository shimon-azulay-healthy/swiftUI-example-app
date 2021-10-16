//
//  NewRoundButtonBodyText.swift
//  Bullseye
//
//  Created by Shimon Azulay on 03/05/2021.
//

import SwiftUI

struct ScoreAlertBodyText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(10.0)
        
    }
}

struct NewRoundButtonBodyText_Previews: PreviewProvider {
    static var previews: some View {
        ScoreAlertBodyText(text: "You scored 200 Points\n🎉🎉🎉")
        ScoreAlertBodyText(text: "You scored 200 Points\n🎉🎉🎉")
            .preferredColorScheme(.dark)
    }
}
