//
//  HomeUIView.swift
//  TabView
//
//  Created by Macbook on 19/10/23.
//

import SwiftUI

struct HomeUIView: View {
    @Binding var selectedTab: Int

    var body: some View {
        NavigationStack {
            VStack {
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                CircleImage()
                    .offset(y: -90)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    NavigationLink(destination: HomeDetailUIView()) {
                        Text("About Turtle Rock")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                    }
                    
                    Text("Descriptive text goes here.")
                }
                .padding()
                Spacer()
            }
        }
    }
}

//#Preview {
//    HomeUIView()
//}
