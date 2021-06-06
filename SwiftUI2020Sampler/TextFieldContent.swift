//
//  TextFieldContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/05.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil)
    }
}

struct TextFieldContent: View {
    @State var numStr: String = ""
    let price: Double = 100
    let taxPercent: Double = 10
    let max = 10
    let min = 0

    var body: some View {
        ZStack {
            Color.white
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }

            VStack {
                HStack {
                    Text("個数: ")
                        .frame(alignment: .topTrailing)
                    Spacer()
                    TextField("0", text: $numStr)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                    Text("個")
                }
                .frame(width: 200)

                Group {
                    if check() {
                        Text("合計金額は \(totalPrice) 円です")
                    } else {
                        Text("個数は1〜10個を入れてください")
                            .foregroundColor(.red)
                            .font(.headline)
                    }
                }
                .frame(width: 300)

            }
            .padding()
            .fixedSize()
        }
    }

    func check() -> Bool {
        guard let num = Int(numStr) else {
            return false
        }

        return (min < num && num <= max)
    }

    var totalPrice: Int {
        guard let num = Double(numStr) else {
            fatalError()
        }

        return Int((price * num) * tax)
    }

    var tax: Double {
        return (taxPercent / 100) + 1.0
    }
}

struct TextFieldContent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldContent()
    }
}
