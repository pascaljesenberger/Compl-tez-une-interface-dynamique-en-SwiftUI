//
//  AppFonts.swift
//  TajMahal
//
//  Created by bertrand jesenberger on 16/11/2024.
//

import SwiftUI


// Définition des polices d'écritures
struct AppFonts {
    static func semiBold(size: CGFloat) -> Font {
        Font.custom("PlusJakartaSans-SemiBold", size: size)
    }
    
    static func bold(size: CGFloat) -> Font {
        Font.custom("PlusJakartaSans-Bold", size: size)
    }
    
    static func regular(size: CGFloat) -> Font {
        Font.custom("PlusJakartaSans-Regular", size: size)
    }
}
