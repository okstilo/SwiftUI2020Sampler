//
//  SegmentedPicker.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/02.
//

import SwiftUI

struct SegmentedPicker: View {
    enum ThisColor: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }

        case red
        case green
        case blue

        var color: Color {
            switch self {
            case .red:
                return Color.red
            case .green:
                return Color.green
            case .blue:
                return Color.blue
            }
        }
    }

    @State var selectedColor: ThisColor = .red

    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color"), content: {
                ForEach(ThisColor.allCases) { c in
                    Text(c.rawValue.capitalized).tag(c)
                }
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Text("\(selectedColor.rawValue.capitalized)")
                .font(.title)
                .foregroundColor(selectedColor.color)
                .padding()
        }
    }
}

struct SegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPicker()
    }
}
