//
//  ColorSliderView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 13.06.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var strValue: String
    @Binding var value: Double
    
    let color: Color
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .accentColor(color)
            .shadow(color: color, radius: 10)
            .animation(.easeInOut, value: value)
            .onChange(of: value) { newValue in
                strValue = "\(lround(newValue))"
            }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(
            strValue: .constant("200"),
            value: .constant(200),
            color: .red
        )
    }
}
