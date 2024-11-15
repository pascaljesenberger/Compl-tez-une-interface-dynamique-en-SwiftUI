//
//  DishDetailView.swift
//  TajMahal
//
//  Created by bertrand jesenberger on 15/11/2024.
//

import SwiftUI

struct DishDetailView: View {
    let dish: Dish
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(dish.name)
                    .font(.custom("PlusJakartaSans-Bold", size: 18))
                    .foregroundColor(.black)
                
                ZStack(alignment: .topTrailing) {
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(16)
                    
                    SpiceLevelIndicator(spiceLevel: dish.spiceLevel)
                        .background(
                            RoundedRectangle(cornerRadius: 100)
                                .frame(width: 74, height: 22)
                                .foregroundColor(.white)
                        )
                        .padding(24)
                }
                
                Text("Allergènes:")
                    .font(.custom("PlusJakartaSans-Bold", size: 12))
                    .foregroundColor(Color("CustomDarkGray"))
                
                Text(dish.allergens)
                    .font(.custom("PlusJakartaSans-Regular", size: 12))
                    .foregroundColor(Color("CustomDarkGray"))
                
                Divider()
                    .foregroundColor(Color("CustomLightGray"))
                
                Text("Ingrédients:")
                    .font(.custom("PlusJakartaSans-Bold", size: 12))
                    .foregroundColor(Color("CustomDarkGray"))
                
                Text(dish.ingredients)
                    .font(.custom("PlusJakartaSans-Regular", size: 12))
                    .foregroundColor(Color("CustomDarkGray"))
                
            }
            .padding()
        }
        }
}

#Preview {
    DishDetailView(dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala"))
}
