//
//  IdenfyCameraOnBoardingViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2021-12-01.
//  Copyright © 2021 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyDynamicCameraOnBoardingViewUISettingsV2: NSObject {
    // CameraOnBoardingViewViewV2 Colors

    public static var idenfyCameraOnBoardingViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyCameraOnBoardingCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCameraOnBoardingCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCameraOnBoardingEnabledContinueButtonTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyCameraOnBoardingDisabledContinueButtonTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.5)
    public static var idenfyCameraOnBoardingDisabledContinueButtonBackgroundColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.2)
    public static var idenfyCameraOnBoardingViewProgressBarFillColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyCameraOnBoardingViewProgressBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyCameraOnBoardingDetailsCardBackgroundColor = IdenfyCommonColors.idenfyPhotoResultDetailsCardBackgroundColorV2
    public static var idenfyCameraOnBoardingDetailsCardTitleColor = IdenfyCommonColors.idenfyMainColorV2

    // CameraOnBoardingViewViewV2 Fonts

    public static var idenfyCameraOnBoardingCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyCameraOnBoardingCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyCameraOnBoardingDetailsCardTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 12)
    
    // CameraOnBoardingViewViewV2 Style
    public static var idenfyCameraOnBoardingDetailsCardCornerRadius = CGFloat(4)
}
