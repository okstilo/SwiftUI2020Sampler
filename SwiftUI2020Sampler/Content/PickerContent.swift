//
//  PickerContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/01.
//

import SwiftUI

struct PickerContent: View {
    @State var selectedSize = 2
    @State var selectedColor: ThisColor = .blue
    let sizes = ["xs", "s", "m", "l", "xl"]

    enum ThisColor: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }

        case red
        case green
        case blue
        case black
        case white

        var thisBackgroundColor: Color {
            switch self {
            case .red:
                return Color.red
            case .green:
                return Color.green
            case .blue:
                return Color.blue
            case .black:
                return Color.black
            case .white:
                return Color.white
            }
        }

        var thisForegroundColor: Color {
            switch self {
            case .white:
                return Color.black
            default:
                return Color.white
            }
        }
    }

    var body: some View {
        VStack {
            HStack {
                Picker(selection: $selectedSize, label: Text("size"), content: {
                    ForEach(0..<sizes.count) { i in
                        Text(sizes[i])
                    }
                })
                .frame(width: 150)
                .padding()
                .clipped()

                Picker(selection: $selectedColor, label: Text("color"), content: {
                    ForEach(ThisColor.allCases) { c in
                        Text(c.rawValue.capitalized).tag(c)
                    }
                })
                .frame(width: 150)
                .padding()
                .clipped()
            }
            .padding()

            HStack {
                Text("size: \(sizes[selectedSize])")
                    .padding()
                Text("color: \(selectedColor.rawValue.capitalized)")
                    .padding()

            }
            .foregroundColor(selectedColor.thisForegroundColor)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(selectedColor.thisBackgroundColor)
            )
        }
    }
}

struct PickerContent_Previews: PreviewProvider {
    static var previews: some View {
        PickerContent()
    }
}
