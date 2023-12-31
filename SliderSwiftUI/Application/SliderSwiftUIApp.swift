//
//  SliderSwiftUIApp.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 11.06.2023.
//

import SwiftUI

@main
struct SliderSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            RGBView()
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
