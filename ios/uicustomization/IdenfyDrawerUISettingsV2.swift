//
//  IdenfyDrawerUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2020-02-12.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyDrawerUISettingsV2: NSObject {
    // Idenfy Drawer Colors

    public static var idenfyDrawerExpandButtonTintColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerTitleTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerDescriptionTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerCurrentInstructionTitleTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerCurrentInstructionDescriptionTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerInstructionControlsTintColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerCurrentInstructionIndicatorColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyDrawerNextInstructionButtonColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerPreviousInstructionButtonColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyDrawerGradientBackgroundTopColor = UIColor.black.withAlphaComponent(0)
    public static var idenfyDrawerGradientBackgroundBottomColor = UIColor.black.withAlphaComponent(0.8)

    // Idenfy Drawer Fonts

    public static var idenfyDrawerTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyDrawerDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyDrawerCurrentInstructionTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 18)
    public static var idenfyDrawerCurrentInstructionDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
}
