//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("TajMahal")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .foregroundColor(AppColors.darkGray)
                            .font(AppFonts.regular(size: 12))
                        
                        Text("Taj Mahal")
                            .foregroundColor(AppColors.veryDarkGray)
                            .font(AppFonts.bold(size: 18))
                    }
                    
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(AppColors.gray)
                        .frame(width: 40, height: 40)
                }
                .padding(.vertical, 24)
                
                VStack(spacing: 16) {
                    RestaurantDescriptionText(iconName: "hours_icon", text: "Mardi", detailText: "11h30 - 14h30・ 18h30 - 22h00")
                    RestaurantDescriptionText(iconName: "takeout_icon", text: "Type de Service", detailText: "À emporter")
                    RestaurantDescriptionText(iconName: "location_icon", text: "12  Avenue de la Brique - 75010 Paris", detailText: "")
                    RestaurantDescriptionText(iconName: "website_icon", text: "www.tajmahal.fr", detailText: "")
                    RestaurantDescriptionText(iconName: "phone_icon", text: "06 12 34 56 78", detailText: "")
                }
                
                Spacer()
                
                // Lien vers page du menu
                NavigationLink {
                    MenuView()
                } label : {
                    Text("Accéder au menu")
                        .foregroundColor(AppColors.white)
                        .font(AppFonts.bold(size: 16))
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(AppColors.red)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    WelcomeView()
}
