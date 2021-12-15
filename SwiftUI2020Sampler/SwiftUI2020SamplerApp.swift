//
//  SwiftUI2020SamplerApp.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/21.
//

import SwiftUI

@main
struct SwiftUI2020SamplerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ShareData())
        }
    }
}
