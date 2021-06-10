//
//  AlertContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/10.
//

import SwiftUI

struct AlertContent: View {
    @State var isButton1: Bool = false
    @State var isButton2: Bool = false
    @State var isButton3: Bool = false
    @State var isSheet: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                isButton1 = true
            }, label: {
                Text("Button1")
            }).alert(isPresented: $isButton1, content: {
                Alert(title: Text("タイトル"), message: Text("メッセージ"),
                      dismissButton: .default(Text("OK")))
            }).padding()

            Button(action: {
                isButton2 = true
            }, label: {
                Text("Button2")
            }).alert(isPresented: $isButton2, content: {
                Alert(title: Text("タイトル"), message: Text("メッセージ"),
                      primaryButton: .default(Text("OK")),
                      secondaryButton: .cancel())
            }).padding()

            Button(action: {
                isButton3 = true
            }, label: {
                Text("Button3")
            }).alert(isPresented: $isButton3, content: {
                Alert(title: Text("タイトル"), message: Text("メッセージ"),
                      primaryButton: .destructive(Text("Delete")),
                      secondaryButton: .cancel())
            }).padding()

            Button(action: {
                isSheet = true
            }, label: {
                Text("Sheet")
            }).actionSheet(isPresented: $isSheet, content: {
                ActionSheet(title: Text("タイトル"), message: Text("メッセージ"), buttons: [
                    .default(Text("One")),
                    .default(Text("Two")),
                    .destructive(Text("Delete")),
                    .cancel()
                ])
            }).padding()
        }
    }
}

struct AlertContent_Previews: PreviewProvider {
    static var previews: some View {
        AlertContent()
    }
}
