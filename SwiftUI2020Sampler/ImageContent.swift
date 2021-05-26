//
//  ImageContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/26.
//

import SwiftUI

struct ImageContent: View {
    var body: some View {
        VStack {
            Image("rahmen")
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 360)
                .clipShape(SuperEllipseShape(rate: 0.75))
                .shadow(radius: 20)
                .overlay(
                    Text("おいしい")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.light)
                )
        }
    }
}

struct ImageContent_Previews: PreviewProvider {
    static var previews: some View {
        ImageContent()
    }
}

struct SuperEllipseShape: Shape {
    let rate: CGFloat
    func path(in rect: CGRect) -> Path {

        let handleX: CGFloat = rect.size.width * rate / 2
        let handleY: CGFloat = rect.size.height * rate / 2

        let left = CGPoint(x: rect.minX, y: rect.midY)
        let top = CGPoint(x: rect.midX, y: rect.minY)
        let right = CGPoint(x: rect.maxX, y: rect.midY)
        let bottom = CGPoint(x: rect.midX, y: rect.maxY)

        var path = Path()

        path.move(to: left) //
        path.addCurve(to: top,
                      control1: CGPoint(x: left.x, y: left.y - handleY),
                      control2: CGPoint(x: top.x - handleX, y: top.y))

        path.addCurve(
          to: right,
            control1: CGPoint(x: top.x + handleX, y: top.y),
            control2: CGPoint(x: right.x, y: right.y - handleY)
        )
        path.addCurve(
          to: bottom,
            control1: CGPoint(x: right.x, y: right.y + handleY),
            control2: CGPoint(x: bottom.x + handleX, y: bottom.y)
        )
        path.addCurve(
          to: left,
            control1: CGPoint(x: bottom.x - handleX, y: bottom.y),
            control2: CGPoint(x: left.x, y: left.y + handleY)
        )

        return path
    }
}
