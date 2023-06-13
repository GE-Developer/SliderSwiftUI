//
//  ColorTextFieldView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 13.06.2023.
//

import SwiftUI

struct ColorTextFieldView: View {
    @Binding var strValue: String
    @Binding var value: Double
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        TextField("", text: $strValue)
            .focused($focusedField, equals: true)
            .frame(width: 70)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.decimalPad)
            .onSubmit {
                setValue()
                focusedField = false
            }
            .toolbar {
                if focusedField {
                    ToolbarItem(placement: .keyboard) {
                        Button("Done") {
                            setValue()
                            endEditing()
                        }
                        .frame(width: 50)
                        .padding(.leading, UIScreen.main.bounds.width - 100)
                    }
                }
            }
    }
    
    private func setValue() {
        value = Double(strValue) ?? 0
    }
    
    private func endEditing() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView(strValue: .constant("200"), value: .constant(200))
    }
}
