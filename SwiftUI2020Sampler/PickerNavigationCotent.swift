//
//  PickerNavigationCotent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/04.
//

import SwiftUI

struct PickerNavigationCotent: View {

    enum Size: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }

        case xs
        case s
        case m
        case l
        case ll
    }

    @State var selectedSize: Size = .m

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("サイズ").font(.headline),
                        footer: Text("あああああ")) {
                    Picker(selection: $selectedSize, label: Text("Size"), content: {
                        ForEach(Size.allCases) { s in
                            Text(s.rawValue.uppercased()).tag(s)
                        }
                    })
                }
            }
            .navigationTitle(Text("サイズ選択"))
        }
    }
}

struct PickerNavigationCotent_Previews: PreviewProvider {
    static var previews: some View {
        PickerNavigationCotent()
    }
}
