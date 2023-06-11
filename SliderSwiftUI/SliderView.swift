//
//  SliderView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 12.06.2023.
//

import SwiftUI

struct SliderView: View {
   
    @Binding var value: Double
    
    let color: Color
    
    var body: some View {
        HStack(spacing: 20) {
            Text("\(lround(value))")
                .frame(width: 40)
                .foregroundColor(.white)
                .bold()
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
                .shadow(color: color, radius: 10)
            
            TextField("", value: $value, format: .number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .frame(width: 60)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(250), color: .green)
    }
}
