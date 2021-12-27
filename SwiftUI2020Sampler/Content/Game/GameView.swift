//
//  GameView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/12/15.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var player: Game

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            TextField("賭けポイント", text: $player.bet)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .onChange(of: player.bet, perform: { _ in
                    player.betCheck()
                })
            Text("獲得ポイント") +            Text("\(player.getPoint)").font(.title)

            if player.point > 0 {
                Button("チャレンジ！") {
                    player.challenge()
                }.padding()
            } else {
                Text("マイナスです！").foregroundColor(.red)
                Button("再チャレンジ") {
                    player.restart()
                }.foregroundColor(.red).padding()
            }
        }.padding()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GameView(player: Game(bet: "30", point: 100))
            GameView(player: Game(bet: "", point: -20))
        }.previewLayout(.fixed(width: 250, height: 200))
    }
}
