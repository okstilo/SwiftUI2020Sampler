//
//  DatePickerContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/04.
//

import SwiftUI

struct DatePickerContent: View {
    @State var startDateTime = Date()
    @State var endDateTime = Date()

    var body: some View {
        VStack {
            DatePicker(
                "開始日時",
                selection: $startDateTime,
                displayedComponents: [.date, .hourAndMinute]
            )
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .padding()

            DatePicker(
                "終了日時",
                selection: $endDateTime,
                displayedComponents: [.date, .hourAndMinute]
            )
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .padding()
        }
        .fixedSize()
    }
}

struct DatePickerContent_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerContent()
    }
}
