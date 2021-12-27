//
//  SectionListContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/09.
//

import SwiftUI

struct SectionListContent: View {
    enum PokemonType: Int, Identifiable {
        var id: Int { self.rawValue }

        case fire
        case water
        case grass

        var name: String {
            switch self {
            case .fire: return "ほのお"
            case .water: return "みず"
            case .grass: return "くさ"
            }
        }
    }

    struct Pokemon: Identifiable {
        var id: Int { self.no }

        let no: Int
        let type: PokemonType
        let name: String
    }

    let pokemonList: [Pokemon] = [
        Pokemon(no: 1, type: .grass, name: "フシギダネ"),
        Pokemon(no: 2, type: .grass, name: "フシギソウ"),
        Pokemon(no: 4, type: .fire, name: "ヒトカゲ"),
        Pokemon(no: 5, type: .fire, name: "リザード"),
        Pokemon(no: 6, type: .fire, name: "リザードン"),
        Pokemon(no: 3, type: .grass, name: "フシギバナ"),
        Pokemon(no: 9, type: .water, name: "カメックス"),
        Pokemon(no: 7, type: .water, name: "ゼニガメ"),
        Pokemon(no: 8, type: .water, name: "カメール")
    ]

    var body: some View {
        let grouped = Dictionary(grouping: pokemonList, by: \.type)
        let pokemonTypes = grouped.map { $0.key }.sorted { $0.rawValue < $1.rawValue }
        let pokemons = pokemonTypes.compactMap { grouped[$0] }.map { value in value.sorted { p1, p2 in  p1.no < p2.no }}

        List {
            ForEach(pokemonTypes) { pokemonType in
                Section(header: Text(pokemonType.name).font(.largeTitle)) {
                    ForEach(pokemons[pokemonType.rawValue]) { pokemon in
                        Text(pokemon.name)
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())

    }
}

struct SectionListContent_Previews: PreviewProvider {
    static var previews: some View {
        SectionListContent()
    }
}
