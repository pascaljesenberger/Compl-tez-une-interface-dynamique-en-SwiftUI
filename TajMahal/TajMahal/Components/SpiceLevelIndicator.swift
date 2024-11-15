//
//  SpiceLevel.swift
//  TajMahal
//
//  Created by bertrand jesenberger on 15/11/2024.
//

import SwiftUI

struct SpiceLevelIndicator: View {
    var spiceLevel: SpiceLevel

    var body: some View {
        HStack {
            Image("spice_icon")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(spiceLevel == .light || spiceLevel == .medium || spiceLevel == .hot ? Color("CustomRed") : Color("CustomLightGray"))
                .frame(width: 12, height: 12)
            
            Image("spice_icon")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(spiceLevel == .medium || spiceLevel == .hot ? Color("CustomRed") : Color("CustomLightGray"))
                .frame(width: 12, height: 12)

            Image("spice_icon")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(spiceLevel == .hot ? Color("CustomRed") : Color("CustomLightGray"))
                .frame(width: 12, height: 12)
        }
    }
}
