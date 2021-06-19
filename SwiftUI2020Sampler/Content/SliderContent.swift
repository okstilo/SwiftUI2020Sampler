//
//  SliderContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/31.
//

import SwiftUI

struct SliderContent: View {
    @State var r: Double = 0
    @State var g: Double = 0
    @State var b: Double = 0
    @State var a: Double = 1

    var body: some View {
        VStack {
            ZStack {
                Text("🐜")
                Circle()
                    .frame(width: 100, height: 100)
                    .padding()
                    .foregroundColor(
                        Color(red: r/255, green: g/255, blue: b/255, opacity: a)
                    )
            }
            HStack {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 20)
                Text(String(Int(r))).frame(width: 40)
                Slider(value: $r, in: 0...255).frame(width: 200)
            }
            HStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 20, height: 20)
                Text(String(Int(g))).frame(width: 40)
                Slider(value: $g, in: 0...255).frame(width: 200)
            }
            HStack {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 20, height: 20)
                Text(String(Int(b))).frame(width: 40)
                Slider(value: $b, in: 0...255).frame(width: 200)
            }
            HStack {
                Rectangle()
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
                    .frame(width: 18, height: 18)
                Text(String(round(a * 10) / 10)).frame(width: 40)
                Slider(value: $a).frame(width: 200)
            }
        }
        .padding()
    }
}

struct SliderContent_Previews: PreviewProvider {
    static var previews: some View {
        SliderContent()
    }
}
