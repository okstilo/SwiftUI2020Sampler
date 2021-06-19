//
//  TextContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/05/24.
//

import SwiftUI

struct TextContent: View {
    var body: some View {
        VStack(spacing: 16.0) {
            Text("春はあけぼの。").foregroundColor(.pink) +            Text("やうやう白くなりゆく山際、少し明かりて、紫だちたる雲の細くたなびきたる。 ")
            Text("夏は夜。").foregroundColor(.blue) +             Text("月のころはさらなり、闇もなほ、蛍の多く飛びちがひたる。また、ただ一つ二つなど、ほのかにうち光て行くもをかし。雨など降るもをかし。 ")
            Text("秋は夕暮れ。").foregroundColor(.orange) +             Text("夕日の差して山の端いと近うなりたるに、烏の寝所へ行くとて、三つ四つ、二つ三つなど飛び急ぐさへあはれなり。まいて雁などの連ねたるが、いと小さく見ゆるは、いとをかし。日入り果てて、風の音、虫の音など、はた言ふべきにあらず。 ")
            Text("冬はつとめて。").foregroundColor(.gray) + Text("雪の降りたるは言ふべきにもあらず、霜のいと白きも、またさらでもいと寒きに、火など急ぎおこして、炭持て渡るも、いとつきづきし。昼になりて、ぬるくゆるびもていけば、火桶の火も、白き灰がちになりてわろし。 ")
            Spacer()
        }
        .padding()
    }
}

struct TextContent_Previews: PreviewProvider {
    static var previews: some View {
        TextContent()
    }
}
