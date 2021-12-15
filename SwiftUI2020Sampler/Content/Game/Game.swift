//
//  Game.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/12/15.
//

import Foundation
import UIKit

class Game: ObservableObject {
    @Published var bet: String
    @Published var point: Int
    @Published var getPoint: Int

    init(bet: String = "", point: Int = 50, getPoint: Int = 0) {
        self.bet = bet
        self.point = point
        self.getPoint = getPoint
    }

    func betCheck() {
        guard var betPoint = Int(bet) else { return }

        betPoint = min(point, betPoint)
        bet = String(betPoint)
    }

    func challenge() {
        guard let betPoint = Int(bet) else { return }

        let num = Int.random(in: -3...3)
        getPoint = betPoint + num
        point += getPoint
    }

    func restart() {
        bet = ""
        point = 50
        getPoint = 0
    }

}
