//
//  HalfModalView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/14.
//

import SwiftUI

struct HalfModalView: View {
    @State var isModal: Bool = false
    @State var count: Int = 0
    let maxCount = 3


    var body: some View {
        VStack {
            Button(action: {
                isModal = true
            }, label: {
                Text("開く")
            }).sheet(isPresented: $isModal, onDismiss: {
                countUp()
            }, content: {
                SomeView()
            }).disabled(isDisabled)
            .padding()
            Text("回数: \(count)")
                .padding()

        }

    }

    var isDisabled: Bool {
        return !(count < maxCount)
    }

    func countUp() {
        count += 1
    }
}

struct SomeView: View {
    var body: some View {
        VStack {
            Text("プレゼント")
            Text("🎁")
        }
    }
}

struct HalfModalView_Previews: PreviewProvider {
    static var previews: some View {
        HalfModalView()
        SomeView()
    }
}
