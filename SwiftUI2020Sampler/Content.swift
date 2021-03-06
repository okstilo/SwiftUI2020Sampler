//
//  Content.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/23.
//

import SwiftUI

enum ContentUI {
    case text
    case image
    case sectionList
    case web
    case button
    case slider
    case picker
    case segmentedPicker
    case pickerNavigation
    case datePicker
    case textField
    case textEdit
    case alert
    case modal
    case scroll
    case tab
    case bindingCheckMark
    case bindingClose
    case ovserveObject
    case game
    case setting
    case other

    var view: some View {
        Group {
            switch self {
            case .text:
                TextContent()
            case .image:
                ImageContent()
            case .sectionList:
                SectionListContent()
            case .web:
                WebContent()
            case .button:
                ButtonContent()
            case .slider:
                SliderContent()
            case .picker:
                PickerContent()
            case .segmentedPicker:
                SegmentedPicker()
            case .pickerNavigation:
                PickerNavigationCotent()
            case .datePicker:
                DatePickerContent()
            case .textField:
                TextFieldContent()
            case .textEdit:
                TextEditContent()
            case .alert:
                AlertContent()
            case .modal:
                HalfModalView()
            case .scroll:
                ScrollContent()
            case .tab:
                TabViewContent()
            case .bindingCheckMark:
                CheckMarkContent()
            case .bindingClose:
                PresentViewContent()
            case .ovserveObject:
                SizeCalcContent()
            case .game:
                GameContent()
            case .setting:
                SettingContent()
            case .other:
                ContentDetailView()
            }
        }
    }
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
    Content(id: 3, cahpterStr: "4-3", chapterTitle: "セクションリスト", pattern: .sectionList),
    Content(id: 4, cahpterStr: "4-6", chapterTitle: "Webリスト", pattern: .web),
    Content(id: 5, cahpterStr: "5-1,2,3", chapterTitle: "ボタン, トグル, ステッパー", pattern: .button),
    Content(id: 6, cahpterStr: "5-4", chapterTitle: "スライダー", pattern: .slider),
    Content(id: 7, cahpterStr: "5-5", chapterTitle: "ピッカー", pattern: .picker),
    Content(id: 8, cahpterStr: "5-6", chapterTitle: "セグメンテッドコントロール", pattern: .segmentedPicker),
    Content(id: 9, cahpterStr: "5-7", chapterTitle: "ピッカーナビゲーション", pattern: .pickerNavigation),
    Content(id: 10, cahpterStr: "5-8", chapterTitle: "デートピッカー", pattern: .datePicker),
    Content(id: 11, cahpterStr: "5-9", chapterTitle: "テキストフィールド", pattern: .textField),
    Content(id: 12, cahpterStr: "5-10", chapterTitle: "テキストエディタ", pattern: .textEdit),
    Content(id: 13, cahpterStr: "6-1, 2", chapterTitle: "アラート, アクションシート", pattern: .alert),
    Content(id: 14, cahpterStr: "6-3", chapterTitle: "ハーフモーダルビュー", pattern: .modal),
    Content(id: 15, cahpterStr: "6-4", chapterTitle: "スクロールビュー", pattern: .scroll),
    Content(id: 16, cahpterStr: "6-5", chapterTitle: "タブビュー", pattern: .tab),
    Content(id: 17, cahpterStr: "7-1", chapterTitle: "チェックマーク", pattern: .bindingCheckMark),
    Content(id: 18, cahpterStr: "7-2", chapterTitle: "バインドクローズ", pattern: .bindingClose),
    Content(id: 19, cahpterStr: "7-3", chapterTitle: "オブザーブオブジェクト", pattern: .ovserveObject),
    Content(id: 20, cahpterStr: "7-4", chapterTitle: "ゲーム", pattern: .game),
    Content(id: 21, cahpterStr: "7-5", chapterTitle: "設定", pattern: .setting)
]
