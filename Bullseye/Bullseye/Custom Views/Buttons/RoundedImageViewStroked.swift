//
//  RoundedImageViewStroked.swift
//  Bullseye
//
//  Created by Shimon Azulay on 30/04/2021.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    let systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewStroked_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            .preferredColorScheme(.dark)
    }
}
