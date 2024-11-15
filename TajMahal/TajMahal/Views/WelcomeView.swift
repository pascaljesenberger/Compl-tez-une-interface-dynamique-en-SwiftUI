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
                            .foregroundColor(Color("CustomDarkGray"))
                            .font(.custom("PlusJakartaSans-Regular", size: 12))
                        
                        Text("Taj Mahal")
                            .foregroundColor(.black)
                            .font(.custom("PlusJakartaSans-Bold", size: 18))
                    }
                    
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color("CustomGray"))
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
                
                NavigationLink {
                    MenuView()
                } label : {
                    Text("Accéder au menu")
                        .foregroundColor(.white)
                        .font(.custom("PlusJakartaSans-Bold", size: 16))
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(Color("CustomRed"))
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
