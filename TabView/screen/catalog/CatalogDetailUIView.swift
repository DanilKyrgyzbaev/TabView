//
//  CatalogDetailUIView.swift
//  TabView
//
//  Created by Macbook on 19/10/23.
//

import SwiftUI

struct CatalogDetailUIView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(0 ..< 15) { item in
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.orange)
                        .frame(height: 44)
                        .padding()
                }
            }
            .safeAreaInset(edge: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Spacer()
                            .overlay(
                                Button(action: {
                                    dismiss()
                                }) {
                                    Image(systemName: "chevron.left").foregroundColor(.white)
                            }, alignment: .leading)

                        Text("Каталог").foregroundColor(.white).font(.title2)

                        Spacer()
                    }
                    .font(.system(size: 16, weight: .heavy, design: .rounded))
                    .padding()
                    Text("Здесь будет поиск ").foregroundColor(.white)
                        .font(.caption)
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
            .tint(.orange)
        }
    }
}

#Preview {
    CatalogDetailUIView()
}
