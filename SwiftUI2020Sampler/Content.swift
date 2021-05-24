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
    case other
}

struct Content: Identifiable {
    let id: Int
    let title: String
    let pattern: ContentPattern
}


let contents: [Content] = [
    Content(id: 1, title: "りんご", pattern: .text),
    Content(id: 2, title: "ゴリラ", pattern: .other),
    Content(id: 3, title: "ラッパ", pattern: .other),
    Content(id: 4, title: "パイナップル", pattern: .other),
    Content(id: 5, title: "ルビー", pattern: .other),
]
