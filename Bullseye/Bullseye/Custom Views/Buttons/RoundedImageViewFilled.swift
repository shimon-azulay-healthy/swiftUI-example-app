//
//  RoundedImageViewFilled.swift
//  Bullseye
//
//  Created by Shimon Azulay on 30/04/2021.
//

import SwiftUI

struct RoundedImageViewFilled: View {
    let systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedImageViewFilled_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageViewFilled(systemName: "list.dash")
        RoundedImageViewFilled(systemName: "list.dash")
            .preferredColorScheme(.dark)
    }
}
