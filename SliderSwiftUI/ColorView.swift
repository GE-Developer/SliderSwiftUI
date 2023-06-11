//
//  ColorView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 11.06.2023.
//

import SwiftUI

struct ColorView: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 170)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 4)
            )
            .foregroundColor(
                Color(
                    red: redValue / 255,
                    green: greenValue / 255,
                    blue: blueValue / 255
                )
            )
            .shadow(color: .black, radius: 10)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redValue: 100, greenValue: 100, blueValue: 100)
    }
}
