//
//  IdenfyLoadingHUDUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2022-03-26.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit

@objc open class IdenfyLoadingHUDUISettingsV2: NSObject {
    // Idenfy Loading HUD Colors
    public static var idenfyLoadingHUDBackgroundColor = IdenfyCommonColors.idenfyBlack.withAlphaComponent(0.8)
    public static var idenfyLoadingHUDTitleColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyLoadingHUDDescriptionColor = IdenfyCommonColors.idenfyWhite

    // Idenfy Loading HUD Fonts
    public static var idenfyLoadingHUDTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 16)
    public static var idenfyLoadingHUDDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontSemiBoldV2, size: 14)
    
    // Idenfy Loading HUD Styles
    public static var idenfyLoadingHUDCornerRadius = CGFloat(20)
}
