//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Etornam on 12/01/2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                // conditional statement
                configuration.isPressed ?
                LinearGradient(
                    colors:
                        [
                            .customGrayMedium,
                            .customGrayLight,
                            
                        ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                
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
            .cornerRadius(40)
    }
}
