//
//  IdenfyGradientButtonUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2020-02-12.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyButtonsUISettingsV2: NSObject {
    // Idenfy Buttons Colors

    public static var idenfyGradientButtonColorStart = IdenfyCommonColors.idenfyGradientColor1V2
    public static var idenfyGradientButtonColorEnd = IdenfyCommonColors.idenfyGradientColor2V2

    // Idenfy Buttons Fonts

    public static var idenfyButtonFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 12)

    // Idenfy Buttons Style

    public static var idenfyButtonCorderRadius = CGFloat(3)
    public static var idenfyChooseAnotherPhotoButtonCornerRadius = CGFloat(2)
}
