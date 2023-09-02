//
//  IdenfyMFAGeneralViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2022-04-09.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyMFAGeneralViewUISettingsV2: NSObject {
    // Idenfy MFA General View Colors

    public static var idenfyMFAGeneralViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyMFAGeneralViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFAGeneralViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFAGeneralViewDescriptionHighlightedTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyMFAGeneralViewHintTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyMFAGeneralViewInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.4)
    public static var idenfyMFAGeneralViewInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFAGeneralViewInputBorderColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.06)
    public static var idenfyMFAGeneralViewInputFocusedBorderColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyMFAGeneralViewInputViewBackgroundColor = UIColor.white
    public static var idenfyMFAGeneralViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite
    
    // Idenfy MFA General View Fonts

    public static var idenfyMFAGeneralViewTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyMFAGeneralViewDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyMFAGeneralViewHintFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 10)
    public static var idenfyMFAGeneralViewInputViewFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 16)
    public static var idenfyMFAGeneralViewDescriptionHighlightedTextFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 15)

    // Idenfy MFA General View Style

    public static var idenfyMFAGeneralViewInputViewCorderRadius = CGFloat(8)
    public static var idenfyMFAGeneralViewInputViewBorderWidth = CGFloat(1)
}
