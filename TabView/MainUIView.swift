//
//  MainUIView.swift
//  TabView
//
//  Created by Macbook on 19/10/23.
//

import SwiftUI

struct MainUIView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        NavigationStack{
            TabView(selection: $selectedTab) {
                HomeUIView(selectedTab: $selectedTab)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(0)
                CatalogUIView(selectedTab: $selectedTab)
                    .tabItem {
                        Label("Catalog", systemImage: "bag")
                    }
                    .tag(1)
                BasketUIView(selectedTab: $selectedTab)
                    .tabItem {
                        Label("Basket", systemImage: "cart")
                    }
                    .tag(2)
                ProfileUIView(selectedTab: $selectedTab)
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                    .tag(3)
            }
        }
    }
}

#Preview {
    MainUIView()
}
