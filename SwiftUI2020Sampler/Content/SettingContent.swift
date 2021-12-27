//
//  SettingContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/12/15.
//

import SwiftUI

struct SettingContent: View {
    @EnvironmentObject var setData: ShareData
    @State var isShow: Bool = false

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("設定: \(setData.isOn ? "ON" : "OFF")")
                Text("評価: " + String(repeating: "★", count: setData.num))
            }.font(.title2)
            Button("設定を変更する") {
                isShow = true
            }
            .padding()
            .sheet(isPresented: $isShow) {
                SettingView(isPresented: $isShow)
            }

        }
    }
}

struct SettingContent_Previews: PreviewProvider {
    static var previews: some View {
        SettingContent().environmentObject(ShareData())
    }
}
