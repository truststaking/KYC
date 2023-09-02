//
//  IdenfyMFAMethodSelectionViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2022-04-09.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyMFAMethodSelectionViewUISettingsV2: NSObject {
    // Idenfy MFA Method Selection View Colors

    public static var idenfyMFAMethodSelectionViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyMFAMethodSelectionViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFAMethodSelectionViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFAMethodSelectionViewHintTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyMFAMethodSelectionViewInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.4)
    public static var idenfyMFAMethodSelectionViewInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyMFAMethodSelectionViewInputBorderColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.06)
    public static var idenfyMFAMethodSelectionViewInputFocusedBorderColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyMFAMethodSelectionViewInputViewBackgroundColor = UIColor.white
    public static var idenfyMFAMethodSelectionViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite
    
    // Idenfy MFA Method Selection View Fonts

    public static var idenfyMFAMethodSelectionViewTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyMFAMethodSelectionViewDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyMFAMethodSelectionViewHintFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 10)
    public static var idenfyMFAMethodSelectionViewInputViewFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 16)

    // Idenfy MFA Method Selection View Style

    public static var idenfyMFAMethodSelectionViewInputViewCorderRadius = CGFloat(8)
    public static var idenfyMFAMethodSelectionViewInputViewBorderWidth = CGFloat(1)
}
