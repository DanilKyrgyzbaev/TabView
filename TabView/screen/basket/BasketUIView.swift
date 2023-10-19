//
//  BasketUIView.swift
//  TabView
//
//  Created by Macbook on 19/10/23.
//

import SwiftUI

struct BasketUIView: View {
    @Binding var selectedTab: Int

    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("Go to Home").foregroundColor(.blue).onTapGesture {
                self.selectedTab = 0
            }
            
            Text("Go to Catalog").foregroundColor(.blue).onTapGesture {
                self.selectedTab = 1
            }
            
            Text("Go to Profile").foregroundColor(.blue).onTapGesture {
                self.selectedTab = 3
            }
            
        }
    }
}

//#Preview {
//    BasketUIView()
//}
