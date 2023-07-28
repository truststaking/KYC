//
//  IdenfyStaticCameraOnBoardingViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2022-03-09.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyStaticCameraOnBoardingViewUISettingsV2: NSObject {
    // CameraOnBoardingViewViewV2 Colors

    public static var idenfyCameraOnBoardingViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyCameraOnBoardingCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCameraOnBoardingCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCameraOnBoardingEnabledContinueButtonTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyCameraOnBoardingDisabledContinueButtonTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.5)
    public static var idenfyCameraOnBoardingDisabledContinueButtonBackgroundColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.2)
    public static var idenfyCameraOnBoardingViewProgressBarFillColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyCameraOnBoardingViewProgressBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyCameraOnBoardingInstructionDetailsTableViewCellTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCameraOnBoardingInstructionDetailsTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCameraOnBoardingInstructionDetailsCellCircleTintColor = IdenfyCommonColors.idenfyMainColorV2

    // CameraOnBoardingViewViewV2 Fonts

    public static var idenfyCameraOnBoardingCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyCameraOnBoardingCommonInformationDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyCameraOnBoardingInstructionDetailsTitleTextFont = UIFont(name: ConstsIdenfyFonts.idenfyFontSemiBoldV2, size: 18)
    public static var idenfyCameraOnBoardingInstructionDetailsTableViewCellTextFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 14)
}
