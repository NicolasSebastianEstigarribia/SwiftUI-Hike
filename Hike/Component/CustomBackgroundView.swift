//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by digital express on 28/10/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        
        ZStack {
            // DEPTH
            
            Color(UIColor.colorGreenDark)
                .cornerRadius(40)
                .offset(y:12)
            
            // Light
            
            Color(UIColor.colorGreenLight).cornerRadius(40)
                .offset(y:3)
            
            
            // Surface
            
            LinearGradient(
                colors:
                [
                    Color(UIColor.colorGreenLight),
                    Color(UIColor.colorGreenMedium)
                ],
                startPoint:
                        .top,
                endPoint:
                        .bottom
            ).cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
}
