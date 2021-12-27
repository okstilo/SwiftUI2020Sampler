//
//  TabViewContent.swift
//  SwiftUI2020Sampler
//
//  Created by Masaki Kitagawa on 2021/06/19.
//

import SwiftUI

struct TabViewContent: View {
    @State var selectedTab = 1

    var body: some View {
        TabView(selection: $selectedTab,
                content: {
                    HomeTabView()
                        .tabItem {
                            Image(systemName: "house")
                        }.tag(1)
                    SearchTabView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }.tag(2)
                    NotifyTabView()
                        .tabItem {
                            Image(systemName: "bell")
                        }.tag(3)
                    MessageTabView()
                        .tabItem {
                            Image(systemName: "envelope")
                        }.tag(4)
                })
    }
}

struct HomeTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .frame(width: 100, height: 100)
            Text("Home")
        }
    }
}

struct SearchTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .frame(width: 100, height: 100)
            Text("Search")
        }
    }
}

struct NotifyTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "bell")
                .frame(width: 100, height: 100)
            Text("Notification")
        }
    }
}

struct MessageTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "envelope")
                .frame(width: 100, height: 100)
            Text("Message")
        }
    }
}

struct TabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContent()
    }
}
