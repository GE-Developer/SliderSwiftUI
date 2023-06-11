//
//  RGBView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 11.06.2023.
//

import SwiftUI

struct RGBView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                ColorView(
                    redValue: redValue,
                    greenValue: greenValue,
                    blueValue: blueValue
                )
                .padding(.bottom, 35)
                
                SliderView(value: $redValue, color: .red)
                SliderView(value: $greenValue, color: .green)
                SliderView(value: $blueValue, color: .blue)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView()
    }
}
