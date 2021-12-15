//
//  GameContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/12/15.
//

import SwiftUI

struct GameContent: View {
    @ObservedObject var player = Game()

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("現在のポイント") +
                Text("\(player.point)")
                    .font(.title)
                    .foregroundColor(player.point > 0 ? .black : .red)
            GameView(player: player)
        }.frame(width: 250)
    }
}

struct GameContent_Previews: PreviewProvider {
    static var previews: some View {
        GameContent()
    }
}
