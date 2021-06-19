//
//  CheckMarkContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/19.
//

import SwiftUI

struct CheckMarkContent: View {
    @State var isCheckedTodo1: Bool = false
    @State var isCheckedTodo2: Bool = false
    @State var isCheckedTodo3: Bool = false

    var body: some View {
        VStack {
            HStack {
                TodoView(isChecked: $isCheckedTodo1)
                Text("ひとつ").padding(.horizontal, 10)
            }
            HStack {
                TodoView(isChecked: $isCheckedTodo2)
                Text("ふたつ").padding(.horizontal, 10)
            }
            HStack {
                TodoView(isChecked: $isCheckedTodo3)
                Text("みっつ").padding(.horizontal, 10)
            }

            if isCheckedTodo1 && isCheckedTodo2 && isCheckedTodo3 {
                Text("達成")
                    .foregroundColor(.blue)
                    .padding()
            } else {
                Text("未達成")
                    .foregroundColor(.red)
                    .padding()
            }
        }
    }
}

struct TodoView: View {
    @Binding var isChecked: Bool

    var body: some View {
        Button(action: {
            isChecked.toggle()
        }, label: {
            let checkName = isChecked ? "checkmark.square" : "square"
            let checkColor = isChecked ? Color.blue : Color.gray
            Image(systemName: checkName)
                .foregroundColor(checkColor)
        })
        .scaleEffect(CGSize(width: 2.0, height: 2.0))
        .frame(width: 50, height: 50, alignment: .center)
    }
}

struct CheckMarkContent_Previews: PreviewProvider {
    static var previews: some View {
        CheckMarkContent()
    }
}
