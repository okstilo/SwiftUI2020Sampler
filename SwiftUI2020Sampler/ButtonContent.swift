//
//  ButtonContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/30.
//

import SwiftUI

struct ButtonContent: View {
    @State var count: Int = 0
    @State var isLike: Bool = true
    @State var num: Int = 0


    var body: some View {
        VStack {
            HStack {
                Text("\(count)")
                    .font(.title2)
                    .padding()

                Button(action: {
                    count += 1
                }, label: {
                    Text("count up")
                        .font(.body)
                        .foregroundColor(.white)
                        .padding()
                })
                .background(
                    Capsule()
                        .foregroundColor(.blue)
                )
            }
            HStack {
                Toggle("", isOn: $isLike)
                    .fixedSize()
                    .padding()

                if isLike {
                    Text("❤️")
                } else {
                    Text("💔")
                }
            }
            HStack {
                Stepper(
                    onIncrement: {
                        num += 1
                        num = min(num, 10)
                    },
                    onDecrement: {
                        num -= 1
                        num = max(0, num)
                    },
                    label: {
                        Text("\(num) 個")
                    }
                )
                .fixedSize()
                .padding()
            }
        }
    }
}

struct ButtonContent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContent()
    }
}
