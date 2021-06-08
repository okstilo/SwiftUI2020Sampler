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
                    destination: content.pattern.view
                ) {
                    RowView(content: content)
                }
            }
            .navigationTitle("SwiftUI 2020 Sampler")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
