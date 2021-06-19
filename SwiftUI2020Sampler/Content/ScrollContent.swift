//
//  ScrollContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/14.
//

import SwiftUI

struct ScrollContent: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { i in
                    Page(str: String(i))
                }
            }
        }
    }
}

struct Page: View {
    let w: CGFloat = UIScreen.main.bounds.width - 40
    let h: CGFloat = 200
    let str: String

    var body: some View {
        ZStack {
            Color.gray
                .frame(width: w, height: h)
                .cornerRadius(3.0)
            Text(str)
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}

struct ScrollContent_Previews: PreviewProvider {
    static var previews: some View {
        ScrollContent()
    }
}
