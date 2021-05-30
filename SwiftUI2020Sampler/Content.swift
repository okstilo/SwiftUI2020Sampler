//
//  Content.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/23.
//

import Foundation

enum ContentUI {
    case text
    case image
    case web
    case button
    case other
}

struct Content: Identifiable {
    let id: Int
    let cahpterStr: String
    let chapterTitle: String
    var title: String {
        return "\(cahpterStr): \(chapterTitle)"
    }
    let pattern: ContentUI
}

let contents: [Content] = [
    Content(id: 1, cahpterStr: "2", chapterTitle: "テキスト", pattern: .text),
    Content(id: 2, cahpterStr: "3", chapterTitle: "イメージ", pattern: .image),
    Content(id: 3, cahpterStr: "4-3", chapterTitle: "セクションリスト", pattern: .other),
    Content(id: 4, cahpterStr: "4-6", chapterTitle: "Webリスト", pattern: .web),
    Content(id: 5, cahpterStr: "5", chapterTitle: "ボタン, トグル, ステッパー", pattern: .button),
]
