//
//  IdenfyPrivacyPolicyViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juškys on 2022-10-25.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyPrivacyPolicyViewUISettingsV2: NSObject {
    
    // PrivacyPolicyViewV2 Colors
    public static var idenfyPrivacyPolicyViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyPrivacyPolicyCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyPrivacyPolicyAgreeButtonTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyPrivacyPolicyDisagreeButtonBackgroundColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyPrivacyPolicyDisagreeButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyPrivacyPolicyDisagreeButtonBorderColor = IdenfyCommonColors.idenfyMainColorV2
    
    // PrivacyPolicyViewV2 Disagree Dialog Colors
    
    public static var idenfyPrivacyPolicyDisagreeDialogViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyPrivacyPolicyDisagreeDialogCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyPrivacyPolicyDisagreeDialogCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.5)
    public static var idenfyPrivacyPolicyDisagreeDialogAgreeButtonTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyPrivacyPolicyDisagreeDialogCancelButtonBackgroundColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyPrivacyPolicyDisagreeDialogCancelButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyPrivacyPolicyDisagreeDialogCancelButtonBorderColor = IdenfyCommonColors.idenfyMainColorV2

    // PrivacyPolicyViewV2 Fonts
    public static var idenfyPrivacyPolicyCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    
    // PrivacyPolicyViewV2 Styles
    public static var idenfyPrivacyPolicyViewDisagreeButtonBorderWidth = CGFloat(2)
    
    // PrivacyPolicyViewV2 Disagree Dialog Fonts
    public static var idenfyPrivacyPolicyDisagreeDialogCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyPrivacyPolicyDisagreeDialogCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    
    // PrivacyPolicyViewV2 Disagree Dialog Styles
    public static var idenfyPrivacyPolicyViewCancelButtonBorderWidth = CGFloat(2)
}
