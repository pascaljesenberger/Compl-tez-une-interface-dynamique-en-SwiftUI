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
    var spiceLevel: SpiceLevel

    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 112, height: 88)
                .cornerRadius(10)
                .padding(.trailing)

            VStack(alignment: .leading, spacing: 4) {
                Text(text)
                    .font(.custom("PlusJakartaSans-SemiBold", size: 14))
                    .foregroundColor(Color("CustomDarkGray"))
                    .multilineTextAlignment(.leading)

                Text(detailText)
                    .font(.custom("PlusJakartaSans-Regular", size: 12))
                    .foregroundColor(Color("CustomDarkGray"))
                    .multilineTextAlignment(.leading)

                SpiceLevelIndicator(spiceLevel: spiceLevel)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 120)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
        )
    }
}
