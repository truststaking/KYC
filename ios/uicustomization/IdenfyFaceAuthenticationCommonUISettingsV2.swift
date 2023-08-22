//
//  IdenfyFaceAuthenticationCommonUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juškys on 2023-06-26.
//  Copyright © 2023 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyFaceAuthenticationCommonUISettingsV2: NSObject {

    // Face Authentication Retry Alert Colors
    public static var idenfyFaceAuthenticationRetryAlertViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyFaceAuthenticationRetryCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFaceAuthenticationRetryCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFaceAuthenticationRetryAlertRetryButtonBackgroundColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyFaceAuthenticationRetryAlertRetryButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyFaceAuthenticationRetryAlertRetryButtonButtonBorderColor = IdenfyCommonColors.idenfyMainColorV2
    
    // Face Authentication Retry Alert Fonts
    public static var idenfyGlareAndBlurAlertCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 24)
    public static var idenfyGlareAndBlurAlertCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 14)
}
