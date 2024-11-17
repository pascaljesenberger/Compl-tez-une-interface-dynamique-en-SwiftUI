//
//  SpiceLevel.swift
//  TajMahal
//
//  Created by bertrand jesenberger on 15/11/2024.
//

import SwiftUI

struct SpiceLevelIndicator: View {
    var spiceLevel: SpiceLevel
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        
        // Indicateur de piquant changeant la couleur en fonction du SpiceLevel
        HStack {
            ForEach(0..<3) { index in
                Image("spice_icon")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(index <= spiceLevel.rawValue ? AppColors.red : AppColors.lightGray)
                    .frame(width: width, height: height)
            }
        }
        
    }
}
