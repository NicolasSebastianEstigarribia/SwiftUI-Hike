//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Nicolas Estigarribia on 07/11/2023.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal)
            .background(
                configuration.isPressed 
                ?
                LinearGradient(
                    colors:
                    [
                        .customGrayMedium,
                        .customGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                ) : 
                    LinearGradient(
                    colors:
                    [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                
            )
            .cornerRadius(20)
    }
}
