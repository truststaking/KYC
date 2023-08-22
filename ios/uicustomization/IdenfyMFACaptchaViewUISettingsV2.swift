//
//  IdenfyMFACaptchaViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2022-04-09.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyMFACaptchaViewUISettingsV2: NSObject {
    // Idenfy MFA Captcha View Colors

    public static var idenfyMFACaptchaViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyMFACaptchaViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFACaptchaViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFACaptchaViewHintTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyMFACaptchaViewInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.4)
    public static var idenfyMFACaptchaViewInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFACaptchaViewInputBorderColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.06)
    public static var idenfyMFACaptchaViewInputFocusedBorderColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyMFACaptchaViewInputViewBackgroundColor = UIColor.white
    public static var idenfyMFACaptchaViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite
    
    // Idenfy MFA Captcha View Fonts

    public static var idenfyMFACaptchaViewTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyMFACaptchaViewDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyMFACaptchaViewHintFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 10)
    public static var idenfyMFACaptchaViewInputViewFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 16)

    // Idenfy MFA Captcha View Style

    public static var idenfyMFACaptchaViewInputViewCorderRadius = CGFloat(3)
    public static var idenfyMFACaptchaViewInputViewBorderWidth = CGFloat(1)
}
