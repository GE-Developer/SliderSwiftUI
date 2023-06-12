//
//  SliderView.swift
//  SliderSwiftUI
//
//  Created by M I C H A E L on 12.06.2023.
//

import SwiftUI

struct SliderView: View {
    
    @State private var textFieldValue = ""
    @Binding var value: Double
    let color: Color
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Text("\(lround(value))")
                .frame(width: 40)
                .foregroundColor(.white)
                .bold()
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
                .shadow(color: color, radius: 10)
                .onChange(of: value) { newValue in
                    textFieldValue = "\(lround(newValue))"
                }
                .animation(.easeInOut, value: value)
            
            TextField("", text: $textFieldValue)
                .focused($focusedField, equals: true)
                .frame(width: 70)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .onSubmit {
                    value = Double(textFieldValue) ?? 0
                    focusedField = false
                }
                .toolbar {
                    if focusedField {
                        ToolbarItem(placement: .keyboard) {
                            Button("Done") {
                                UIApplication.shared.endEditing()
                            }
                            .padding(.trailing)
                            
                        }
                    }
                    
                }
            
            
        }
        .onAppear {
            textFieldValue = "\(lround(value))"
        }
    }
    
    
    
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(250), color: .green)
    }
}


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
