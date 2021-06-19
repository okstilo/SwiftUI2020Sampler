//
//  TextEditContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/08.
//

import SwiftUI

struct TextEditContent: View {
    @State private var textValue: String = """
        あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。
        """

    var body: some View {
        NavigationView {
            TextEditor(text: $textValue)
                .lineSpacing(10.0)
                .border(Color.gray)
                .padding()
                .navigationTitle("ポラーノの広場")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            if let text = loadText("sample.txt") {
                                textValue = text
                            }
                        }, label: {
                            Text("読み込み")
                        })
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            UIApplication.shared.endEditing()
                            saveText(textValue, "sample.txt")
                        }, label: {
                            Text("保存")
                        })
                    }
                })
        }
    }

    func saveText(_ textValue: String, _ fileName: String) {
        guard let url = docURL(fileName) else {
            return
        }

        do {
            let path = url.path
            try textValue.write(toFile: path, atomically: true, encoding: .utf8)
        } catch let error as NSError {
            print(error)
        }

    }

    func docURL(_ fileName: String) -> URL? {
        let fileManager = FileManager.default
        do {
            let docUrl = try fileManager.url(
                for: .documentDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: false)
            let url = docUrl.appendingPathComponent(fileName)
            return url
        } catch {
            return nil
        }
    }

    func loadText(_ fileName: String) -> String? {
        guard let url = docURL(fileName) else {
            return nil
        }

        do {
            let textValue = try String(contentsOf: url, encoding: .utf8)
            return textValue
        } catch {
            return nil
        }
    }
}

struct TextEditContent_Previews: PreviewProvider {
    static var previews: some View {
        TextEditContent()
    }
}
