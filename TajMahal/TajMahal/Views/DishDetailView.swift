//
//  DishDetailView.swift
//  TajMahal
//
//  Created by bertrand jesenberger on 15/11/2024.
//

import SwiftUI

struct DishDetailView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    // Déclaration de la constante dish qui contient les informations du plat
    let dish: Dish
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                ZStack(alignment: .topTrailing) {
                    
                    // Image du plat avec l'indicateur de piquant par dessus
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(16)
                    
                    SpiceLevelIndicator(spiceLevel: dish.spiceLevel, width: 14, height: 14)
                        .background(
                            RoundedRectangle(cornerRadius: 100)
                                .frame(width: 74, height: 22)
                                .foregroundColor(AppColors.white)
                        )
                        .padding(.horizontal, 24)
                        .padding(.vertical, 16)
                }
                .padding(.bottom, 16)
                
                // Allergènes du plat
                Text("Allergènes:")
                    .font(AppFonts.bold(size: 12))
                    .foregroundColor(AppColors.darkGray)
                
                Text(dish.allergens)
                    .font(AppFonts.regular(size: 12))
                    .foregroundColor(AppColors.darkGray)
                
                Divider()
                    .foregroundColor(AppColors.lightGray)
                
                // Ingrédients du plat
                Text("Ingrédients:")
                    .font(AppFonts.bold(size: 12))
                    .foregroundColor(AppColors.darkGray)
                
                Text(dish.ingredients)
                    .font(AppFonts.regular(size: 12))
                    .foregroundColor(AppColors.darkGray)
                
            }
            .padding()
            .padding(.top, 0)
        }
        
        // Barre de navigation avec le nom du plat
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(AppColors.veryDarkGray)
                    
                    Text(dish.name)
                        .foregroundColor(AppColors.veryDarkGray)
                        .font(AppFonts.bold(size: 18))
                }
            }
        }
    }
}
