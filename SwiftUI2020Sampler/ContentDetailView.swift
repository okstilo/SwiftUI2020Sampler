//
//  ContentDetailView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/23.
//

import SwiftUI

struct ContentDetailView: View {
    let content: Content

    var body: some View {
        VStack {
            Text(content.detail)
        }
        .padding()
            .navigationTitle(Text(verbatim: content.title))
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView(content: contents[0])
    }
}
