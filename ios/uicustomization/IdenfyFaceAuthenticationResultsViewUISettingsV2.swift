//
//  IdenfyFaceAuthenticationResultsViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2021-10-29.
//  Copyright © 2021 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyFaceAuthenticationResultsViewUISettingsV2: NSObject {
    // FaceAuthenticationResultsView Colors

    public static var idenfyFaceAuthenticationResultsViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyFaceAuthenticationResultsViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFaceAuthenticationResultsViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFaceAuthenticationResultsViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite

    // FaceAuthenticationResultsView Fonts

    public static var idenfyFaceAuthenticationResultsViewCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyFaceAuthenticationResultsViewCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
}
