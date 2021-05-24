//
//  TextContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/24.
//

import SwiftUI

struct TextContent: View {
    var body: some View {
        VStack {
            Text("Hello, World!").padding()
            Text("Hello, World!")

        }
    }
}

struct TextContent_Previews: PreviewProvider {
    static var previews: some View {
        TextContent()
    }
}
