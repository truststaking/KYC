//
//  FaceAuthenticationInitialViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2021-10-29.
//  Copyright © 2021 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyFaceAuthenticationInitialViewUISettingsV2: NSObject {
    // FaceAuthenticationInitialView Colors

    public static var idenfyFaceAuthenticationInitialViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyFaceAuthenticationInitialViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFaceAuthenticationInitialViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFaceAuthenticationInitialViewAuthenticationAttemptCountColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyFaceAuthenticationInitialViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite

    // FaceAuthenticationInitialView Fonts

    public static var idenfyFaceAuthenticationInitialViewCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyFaceAuthenticationInitialViewCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyFaceAuthenticationInitialViewLivenessAttemptCountFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 23)
}
