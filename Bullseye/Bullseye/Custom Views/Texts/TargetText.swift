//
//  TargetText.swift
//  Bullseye
//
//  Created by Shimon Azulay on 29/04/2021.
//

import SwiftUI

struct TargetText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .foregroundColor(Color("TextColor"))
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct TargetText_Previews: PreviewProvider {
    static var previews: some View {
        TargetText(text: "89")
        TargetText(text: "89")
            .preferredColorScheme(.dark)
    }
}

