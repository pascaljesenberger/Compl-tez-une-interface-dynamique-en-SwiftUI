//
//  RestaurantDescriptionView.swift
//  TajMahal
//
//  Created by bertrand jesenberger on 15/11/2024.
//

import SwiftUI

struct RestaurantDescriptionText: View {
    var iconName: String
    var text: String
    var detailText: String

    var body: some View {
        HStack {
            
            // Icone
            Image(iconName)
                .resizable()
                .frame(width: 12, height: 12)

            // Texte
            Text(text)
                .foregroundColor(AppColors.darkGray)
                .font(AppFonts.semiBold(size: 12))

            Spacer()

            // Texte détaillé
            Text(detailText)
                .foregroundColor(AppColors.darkGray)
                .font(AppFonts.semiBold(size: 12))
        }
    }
}
