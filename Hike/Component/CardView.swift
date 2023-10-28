//
//  CardView.swift
//  Hike
//
//  Created by digital express on 28/10/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            ZStack {
                Circle().fill(
                    LinearGradient(colors:
                                    [
                                        Color(UIColor.colorIndigoMedium),
                                        Color(UIColor.colorSalmonLight)
                                    ],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                ).frame(width: 256, height: 256)
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        }.frame(width: 320 , height: 570)
    }
}

#Preview {
    CardView()
}
