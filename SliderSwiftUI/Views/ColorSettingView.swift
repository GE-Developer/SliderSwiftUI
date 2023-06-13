//
//  ColorSettingView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 12.06.2023.
//

import SwiftUI

struct ColorSettingView: View {
    @Binding var value: Double
    
    @State private var strValue = ""
    
    let color: Color
    
    var body: some View {
        HStack(spacing: 20) {
            ColorTextView(value: value)
            ColorSliderView(strValue: $strValue, value: $value, color: color)
            ColorTextFieldView(strValue: $strValue, value: $value)
        }
        .onAppear {
            strValue = "\(lround(value))"
        }
    }
}

struct ColorSettingView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSettingView(value: .constant(250), color: .green)
    }
}
