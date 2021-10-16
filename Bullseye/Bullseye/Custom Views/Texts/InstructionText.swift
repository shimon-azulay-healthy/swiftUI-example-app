//
//  InstructionText.swift
//  Bullseye
//
//  Created by Shimon Azulay on 29/04/2021.
//

import SwiftUI

struct InstructionText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .foregroundColor(Color("TextColor"))
            .font(.footnote)
    }
}

struct InstructionText_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText(text: "Instruction")
        InstructionText(text: "Instruction")
            .preferredColorScheme(.dark)
    }
}
