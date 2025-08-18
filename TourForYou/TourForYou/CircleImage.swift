//
//  CircleImage.swift
//  TourForYou
//
//  Created by Admin on 8/18/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("NTower")
            .resizable()
            .clipShape(Circle())
            .frame(width: 250,height: 250)
            .overlay {
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
