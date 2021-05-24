//
//  RowView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/23.
//

import SwiftUI

struct RowView: View {
    let content: Content

    var body: some View {
        VStack {
            Text(content.title)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(content: contents[0])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
