//
//  ContentDetailView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/23.
//

import SwiftUI

struct ContentDetailView: View {
    private let text: String = "その他"

    var body: some View {
        VStack {
            Text(text)
        }
        .padding()
            .navigationTitle(Text(verbatim: text))
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
