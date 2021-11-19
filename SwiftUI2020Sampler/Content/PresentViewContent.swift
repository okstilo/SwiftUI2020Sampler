//
//  PresentViewContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/11/19.
//

import SwiftUI

struct PresentViewContent: View {
    @State var isShow: Bool = false

    var body: some View {
        Button(action: {
            isShow = true
        }, label: {
            Text("表示")
        })
            .sheet(isPresented: $isShow) {
                RedView(isPresented: $isShow)
            }
    }
}

struct RedView: View {
    @Binding var isPresented: Bool

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "ladybug").scaleEffect(2.0)
                Text("ハロー").font(.title2).padding()
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color.red)
            .ignoresSafeArea()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented = false
                    } label: {
                        Text("閉じる")
                    }
                }
            }
        }
    }


}

struct PresentViewContent_Previews: PreviewProvider {
    static var previews: some View {
        PresentViewContent()
        RedView(isPresented: Binding.constant(false))
    }
}
