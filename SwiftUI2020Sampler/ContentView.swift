//
//  ContentView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/21.
//

import SwiftUI

let hoge = [
    "りんご",
    "ゴリラ",
    "ラッパ",
    "パイナップル"
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: Text("その1").font(.largeTitle).padding(.top),
                    footer: Text("つづく")) {
                    ForEach(0..<hoge.count) { i in
                        HStack {
                            Text(String(i))
                            Text(hoge[i])
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("しりとり")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
