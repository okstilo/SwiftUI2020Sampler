//
//  ContentView.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(contents) { content in
                switch content.pattern {
                case .text:
                    NavigationLink(
                        destination: TextContent()
                    ) {
                        RowView(content: content)
                    }
                case .image:
                    NavigationLink(
                        destination: ImageContent()
                    ) {
                        RowView(content: content)
                    }
                case .web:
                    NavigationLink(
                        destination: WebContent()
                    ) {
                        RowView(content: content)
                    }
                case .button:
                    NavigationLink(
                        destination: ButtonContent()
                    ) {
                        RowView(content: content)
                    }
                case .slider:
                    NavigationLink(
                        destination: SliderContent()
                    ) {
                        RowView(content: content)
                    }
                case .picker:
                    NavigationLink(
                        destination: PickerContent()
                    ) {
                        RowView(content: content)
                    }
                case .segmentedPicker:
                    NavigationLink(
                        destination: SegmentedPicker()
                    ) {
                        RowView(content: content)
                    }
                case .pickerNavigation:
                    NavigationLink(
                        destination: PickerNavigationCotent()
                    ) {
                        RowView(content: content)
                    }
                case .datePicker:
                    NavigationLink(
                        destination: DatePickerContent()
                    ) {
                        RowView(content: content)
                    }

                case .other:
                    NavigationLink(
                        destination: ContentDetailView(text: content.title)
                    ) {
                        RowView(content: content)
                    }
                }
            }
            .navigationTitle("SwiftUI 2020 Sampler")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
