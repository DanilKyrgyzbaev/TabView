//
//  CatalogUIView.swift
//  TabView
//
//  Created by Macbook on 19/10/23.
//

import SwiftUI

struct CatalogUIView: View {
    @Binding var selectedTab: Int

    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                Text("CatalogUIView")
                Divider()
                NavigationLink(destination: CatalogDetailUIView()) {
                    Text("Go to CatalogDetailUIView")
                }
                .navigationTitle("CatalogDetailUIView")
                
                Text("Go to Basket").foregroundColor(.blue).onTapGesture {
                    self.selectedTab = 2
                }
                Spacer()
            }.safeAreaInset(edge: .top){
                VStack(alignment: .leading, spacing: 8) {
                    HStack{
                        Spacer()
                        
                        Text("Profile").foregroundColor(.white).font(.title2)
                        
                        Spacer()
                    }
                    .font(.system(size: 16, weight: .heavy, design: .rounded))
                    .padding()
                }
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(stops: [
                        Gradient.Stop(color: Color(red: 0.33, green: 0.13, blue: 0.5), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.64, green: 0.07, blue: 0.55), location: 0.61),
                        Gradient.Stop(color: Color(red: 0.76, green: 0.09, blue: 0.52), location: 1.00),
                    ]), startPoint: UnitPoint(x: 1, y: 0), endPoint: UnitPoint(x: 0, y: 1)
                    ).cornerRadius(10).ignoresSafeArea(.container, edges: .top)
                        
                )
            }
            .navigationBarHidden(true)
//            .tint(.orange)
        }
    }
}

//#Preview {
//    CatalogUIView()
//}


//VStack (alignment: .center, spacing: 20) {
//    Text("Planet tab view")
//    Divider()
//    NavigationLink(destination: CatalogDetailUIView()) {
//        Text("Go to nested planet view")
//    }
//    .navigationTitle("Planet")
//    
//    Text("Go to Basket").foregroundColor(.blue).onTapGesture {
//        self.selectedTab = 2
//    }
//}
