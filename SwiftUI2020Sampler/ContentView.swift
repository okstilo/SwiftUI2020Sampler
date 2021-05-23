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
                NavigationLink(
                    destination: ContentDetailView(content: content)
                ) {
                    RowView(content: content)
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
