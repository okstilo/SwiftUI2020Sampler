//
//  Content.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/23.
//

import Foundation

struct Content: Identifiable {
    let id: Int
    let title: String
    let detail: String
}

let contents: [Content] = [
    Content(id: 1, title: "りんご", detail: "赤いりんご"),
    Content(id: 2, title: "ゴリラ", detail: "ブタゴリラ"),
    Content(id: 3, title: "ラッパ", detail: "ラッパー"),
    Content(id: 4, title: "パイナップル", detail: "ボンバー"),
    Content(id: 5, title: "ルビー", detail: "プログラミング言語"),
]
