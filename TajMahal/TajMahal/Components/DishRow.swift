//
//  DishRow.swift
//  TajMahal
//
//  Created by bertrand jesenberger on 15/11/2024.
//

import SwiftUI

struct DishRow: View {
    var image: String
    var text: String
    var detailText: String
    var price: Double
    var spiceLevel: SpiceLevel
    
    // Prix formaté en euros
    var formattedPrice: String {
        String(format: "%.2f €", price)
    }
    
    var body: some View {
        HStack(alignment: .top) {
            
            // Image du plat
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 112, height: 86)
                .cornerRadius(10)
                .padding(.trailing)
            
            VStack(alignment: .leading, spacing: 4) {
                
                // Nom du plat
                Text(text)
                    .font(AppFonts.semiBold(size: 14))
                    .foregroundColor(AppColors.darkGray)
                    .multilineTextAlignment(.leading)
                
                // Description du plat
                Text(detailText)
                    .font(AppFonts.regular(size: 12))
                    .foregroundColor(AppColors.darkGray)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    
                    // Prix du plat
                    Text(formattedPrice)
                        .font(AppFonts.semiBold(size: 12))
                        .foregroundColor(AppColors.darkGray)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    // Indicateur de piquant
                    SpiceLevelIndicator(spiceLevel: spiceLevel, width: 12, height: 12)
                }
                .padding(.top, 14)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 120)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(AppColors.white)
        )
    }
}
