//
//  Content.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/23.
//

import Foundation

enum ContentPattern {
    case text
    case image
    case web
    case button
    case other
}

struct Content: Identifiable {
    let id: Int
    let title: String
    let pattern: ContentPattern
}


let contents: [Content] = [
    Content(id: 1, title: "春はあけぼの", pattern: .text),
    Content(id: 2, title: "ラーメン", pattern: .image),
    Content(id: 3, title: "ウェブ", pattern: .web),
    Content(id: 4, title: "ボタン", pattern: .button),
    Content(id: 5, title: "ルビー", pattern: .other),
]
