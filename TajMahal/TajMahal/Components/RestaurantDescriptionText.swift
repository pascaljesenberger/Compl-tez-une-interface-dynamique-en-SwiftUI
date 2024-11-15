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
    var detailText : String
    
    var body: some View {
        HStack {
            Image(iconName)
                .resizable()
                .frame(width: 12, height: 12)
            
            Text(text)
                .foregroundColor(Color("CustomDarkGray"))
                .font(.custom("PlusJakartaSans-SemiBold", size: 12))
            
            
            Spacer()
            
            Text(detailText)
                .foregroundColor(Color("CustomDarkGray"))
                .font(.custom("PlusJakartaSans-SemiBold", size: 12))
        }
    }
}
