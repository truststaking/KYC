//
//  IdenfyIdentificationSuspectedResultsViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2022-02-21.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyIdentificationSuspectedResultsViewUISettingsV2: NSObject {
    // IdentificationSuspectedResultsViewV2 Colors

    public static var idenfyIdentificationSuspectedResultsViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyIdentificationSuspectedResultsViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyIdentificationSuspectedResultsViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.5)
    public static var idenfyIdentificationSuspectedResultsViewCommonInformationDescriptionEmailTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyIdentificationSuspectedResultsViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite

    // IdentificationSuspectedResultsViewV2 Fonts

    public static var idenfyIdentificationSuspectedResultsViewCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyIdentificationSuspectedResultsViewCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyIdentificationSuspectedResultsViewCommonInformationDescriptionEmailFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 15)
}
