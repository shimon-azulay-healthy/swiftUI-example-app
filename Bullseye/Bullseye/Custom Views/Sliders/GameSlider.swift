//
//  GameSlider.swift
//  Bullseye
//
//  Created by Shimon Azulay on 29/04/2021.
//

import SwiftUI

struct GameSlider: View {
    let minValue: Double
    @Binding var value: Double
    let maxValue: Double
    
    var body: some View {
        HStack {
            Text(String(Int(minValue)))
                .bold()
                .foregroundColor(Color("TextColor"))
            Slider(value: $value, in: minValue...maxValue)
            Text(String(Int(maxValue)))
                .bold()
                .foregroundColor(Color("TextColor"))
        }
        .padding()
        .transition(.scale)
    }
}

struct GameSlider_Previews: PreviewProvider {
    static var previews: some View {
        GameSlider(minValue: 1.0, value: .constant(50.0), maxValue: 100.0)
        GameSlider(minValue: 1.0, value: .constant(50.0), maxValue: 100.0)
            .preferredColorScheme(.dark)
    }
}
