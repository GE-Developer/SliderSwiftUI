//
//  ColorView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 11.06.2023.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 170)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 4)
            )
            .foregroundColor(
                Color(red: red / 255, green: green / 255, blue: blue / 255)
            )
            .shadow(color: .black, radius: 10)
            .padding(.bottom)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
    }
}
