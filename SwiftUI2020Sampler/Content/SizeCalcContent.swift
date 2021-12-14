//
//  SizeCalcContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/12/14.
//

import SwiftUI

class User: ObservableObject {
    @Published var name = ""
    @Published var tall = ""

    func fitSize() -> String {
        guard let height = Double(self.tall) else {
            return "non"
        }

        switch height {
        case 145..<155 :
            return "S"
        case 155..<176:
            return "M"
        case 176..<185:
            return "L"
        default:
            return "over"
        }
    }
}

struct SizeCalcContent: View {
    @ObservedObject var user = User()

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Group {
                TextField("名前", text: $user.name)
                TextField("身長", text: $user.tall)
                    .keyboardType(.numberPad)
            }.textFieldStyle(RoundedBorderTextFieldStyle())

            if !(user.name).isEmpty && !(user.tall).isEmpty {
                Text("\(user.name)さんのサイズは\(user.fitSize())です")
            }
        }.frame(width: 250)
    }
}

struct SizeCalcContent_Previews: PreviewProvider {
    static var previews: some View {
        SizeCalcContent()
    }
}
