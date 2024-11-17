//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    // Injection de ViewModel pour récupérer les données dans la vue
    let viewModel: ViewModel = ViewModel()

    var body: some View {
        NavigationView {
            ZStack {
                
                // Couleur de fond
                AppColors.background
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Entrées")
                                .font(AppFonts.bold(size: 14))
                                .foregroundColor(AppColors.darkGray)

                            // Présenter les entrées une par une en fonction de leur nom en utilisant DishRow et les données de apetizerArray du ViewModel
                            ForEach(viewModel.apetizerArray, id: \.name) { dish in
                                let dishRow = DishRow(image: dish.imageName, text: dish.name, detailText: dish.description, price: dish.price, spiceLevel: dish.spiceLevel)
                                
                                // Lien de navigation vers DishDetailView pour chaque plat
                                NavigationLink {
                                    DishDetailView(dish: dish)
                                } label: {
                                    dishRow
                                }
                            }
                        }
                        .padding(.bottom)

                        VStack(alignment: .leading, spacing: 12) {
                            Text("Plats Principaux")
                                .font(AppFonts.bold(size: 14))
                                .foregroundColor(AppColors.darkGray)

                            // Présenter les plats un par un en fonction de leur nom en utilisant DishRow et les données de mainCourseArray du ViewModel
                            ForEach(viewModel.mainCourseArray, id: \.name) { dish in
                                let dishRow = DishRow(image: dish.imageName, text: dish.name, detailText: dish.description, price: dish.price, spiceLevel: dish.spiceLevel)
                                
                                // Lien de navigation vers DishDetailView pour chaque plat
                                NavigationLink {
                                    DishDetailView(dish: dish)
                                } label: {
                                    dishRow
                                }
                            }
                        }
                        .padding(.top, 8)
                        .padding(.bottom)
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
            }
            
            // Barre de navigation
            .navigationBarTitle("Menu", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(AppColors.veryDarkGray)
                    }
                }

                ToolbarItem(placement: .principal) {
                    Text("Menu")
                        .foregroundColor(AppColors.veryDarkGray)
                        .font(AppFonts.bold(size: 18))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MenuView()
}
