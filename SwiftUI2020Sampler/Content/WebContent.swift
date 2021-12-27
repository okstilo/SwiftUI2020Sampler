//
//  WebContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/27.
//

import SwiftUI

struct WebContent: View {
    let webList: [WebData] = [
        WebData(
            id: 1,
            name: "愛知県美術館",
            urlStr: "https://www-art.aac.pref.aichi.jp" ),
        WebData(
            id: 2,
            name: "名古屋市美術館",
            urlStr: "http://www.art-museum.city.nagoya.jp" ),
        WebData(
            id: 3,
            name: "名古屋市博物館",
            urlStr: "http://www.museum.city.nagoya.jp" ),
        WebData(
            id: 4,
            name: "名古屋市科学館",
            urlStr: "http://www.ncsm.city.nagoya.jp" )
    ]

    var body: some View {
        List(webList) { item in
            if let url = URL(string: item.urlStr),
               UIApplication.shared.canOpenURL(url) {
                Link(item.name, destination: URL(string: item.urlStr)!)
            } else {
                Text(item.name).foregroundColor(.gray)
                    + Text("error").foregroundColor(.red)
            }
        }
        .navigationTitle(Text("Webリスト"))
    }
}

struct WebData: Identifiable {
    let id: Int
    let name: String
    let urlStr: String
}

struct WebContent_Previews: PreviewProvider {
    static var previews: some View {
        WebContent()
    }
}
