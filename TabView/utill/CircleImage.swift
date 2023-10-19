//
//  CircleImage.swift
//  TabView
//
//  Created by Macbook on 19/10/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Image")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
