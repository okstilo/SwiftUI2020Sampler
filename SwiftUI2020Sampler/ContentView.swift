//
//  ContentView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(contents) { content in
                switch content.pattern {
                case .text:
                    NavigationLink(
                        destination: TextContent()
                    ) {
                        RowView(content: content)
                    }
                case .image:
                    NavigationLink(
                        destination: ImageContent()
                    ) {
                        RowView(content: content)
                    }
                case .web:
                    NavigationLink(
                        destination: WebContent()
                    ) {
                        RowView(content: content)
                    }
                case .button:
                    NavigationLink(
                        destination: ButtonContent()
                    ) {
                        RowView(content: content)
                    }
                case .other:
                    NavigationLink(
                        destination: ContentDetailView(text: content.title)
                    ) {
                        RowView(content: content)
                    }
                }
            }
            .navigationTitle("しりとり")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
