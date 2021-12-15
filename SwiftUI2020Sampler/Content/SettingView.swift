//
//  SettingView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/12/15.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var setData: ShareData
    @Binding var isPresented: Bool

    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $setData.isOn) {
                    Text("設定: \(setData.isOn ? "ON" : "OFF")")
                }.frame(width: 250)
                Stepper(value: $setData.num, in: 1...5) {
                    Text("★: \(setData.num)")
                }
                .frame(width: 250)
            }
            .font(.title2)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.9, blue: 0.5))
            .ignoresSafeArea()
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Button("閉じる", action: {
                        isPresented = false
                    })
                })
            })
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(isPresented: Binding.constant(false))
            .environmentObject(ShareData())
    }
}
