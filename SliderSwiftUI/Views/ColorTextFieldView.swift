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
    
    @State private var showAlert = false
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        TextField("", text: $strValue)
            .focused($focusedField, equals: true)
            .frame(width: 70)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.decimalPad)
            .multilineTextAlignment(.center)
            .alert("Вы вне диапазона", isPresented: $showAlert, actions: {})
            .onSubmit {
                setValue()
                focusedField = false
            }
            .toolbar {
                if focusedField {
                    ToolbarItem(placement: .keyboard) {
                        Button("Done") {
                            setValue()
                            UIApplication.shared.endEditing()
                        }
                        .frame(width: 50)
                        .padding(.leading, UIScreen.main.bounds.width - 100)
                    }
                }
            }
    }
    
    private func setValue() {
        let currentValue = Double(strValue) ?? 0
        
        switch currentValue {
        case 255...:
            value = 255
            showAlert.toggle()
        case 0..<255:
            value = currentValue
        default:
            value = 0
            showAlert.toggle()
        }
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView(strValue: .constant("200"), value: .constant(200))
    }
}
