//
//  ViewModel.swift
//  TajMahal
//
//  Created by Amandine Cousin on 07/11/2023.
//

import Foundation

// Strcture qui gère toute la logique du code
// Fait l'intermédiaire entre l'affichage et les données
struct ViewModel {
    
    // Stocke les entrées qui composent le menu du restaurant
    let apetizerArray : [Dish] =
    [Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: 5.50),
     Dish(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", spiceLevel: .medium, imageName: "Pakoras", price: 5.00),
     Dish(name: "Aloo Tikki", description: "Galettes de pommes de terre épicées et croustillantes", allergens: "Sans allergènes majeurs", ingredients: "Pommes de terre, épices, farine de pois chiches", spiceLevel: .medium, imageName: "Aloo", price: 5.50)]
    
    // Stocke les plats qui composent le menu du restaurant
    let mainCourseArray : [Dish] =
    [Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: 13.00),
     Dish(name: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Noix de cajou, riz", ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre", spiceLevel: .medium, imageName: "Biryani", price: 10.50),
     Dish(name: "Rogan Josh", description: "Agneau mijoté dans une sauce épicée", allergens: "Ail, oignon", ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", spiceLevel: .hot, imageName: "Rogan Josh", price: 11.50)]
}
