//
//  IdenfyAdditionalSupportViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2022-02-09.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyAdditionalSupportViewUISettingsV2: NSObject {
    // AdditionalSupportViewV2 Colors

    public static var idenfyAdditionalSupportViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyAdditionalSupportViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyAdditionalSupportViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.5)
    public static var idenfyAdditionalSupportViewCommonInformationDescriptionEmailTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyAdditionalSupportViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite

    // AdditionalSupportViewV2 Fonts

    public static var idenfyAdditionalSupportViewCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyAdditionalSupportViewCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyAdditionalSupportViewCommonInformationDescriptionEmailFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 15)
}
