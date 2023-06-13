//
//  ColorTextView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 13.06.2023.
//

import SwiftUI

struct ColorTextView: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 40)
            .foregroundColor(.white)
            .bold()
    }
}

struct ColorTextView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextView(value: 200)
    }
}
