//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackGroundColor")
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Text("Menu")
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .font(.custom("PlusJakartaSans-Bold", size: 18))
                        
                        VStack(alignment: .leading) {
                            Text("Entrées")
                                .font(.custom("PlusJakartaSans-Bold", size: 14))
                                .foregroundColor(Color("CustomDarkGray"))
                            
                            ForEach(viewModel.apetizerArray, id: \.name) { dish in
                                NavigationLink {
                                    DishDetailView(dish: dish)
                                } label: {
                                    DishRow(image: dish.imageName, text: dish.name, detailText: dish.description, spiceLevel: dish.spiceLevel)
                                }
                            }
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading) {
                            Text("Plats Principaux")
                                .font(.custom("PlusJakartaSans-Bold", size: 14))
                                .foregroundColor(Color("CustomDarkGray"))
                            
                            ForEach(viewModel.mainCourseArray, id: \.name) { dish in
                                NavigationLink {
                                    DishDetailView(dish: dish)
                                } label: {
                                    DishRow(image: dish.imageName, text: dish.name, detailText: dish.description, spiceLevel: dish.spiceLevel)
                                }
                            }
                        }
                        .padding(.bottom)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
