//
//  IdenfyIdentificationResultsViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2020-02-12.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyIdentificationResultsViewUISettingsV2: NSObject {
    // Idenfy Identification Results View Colors

    public static var idenfyIdentificationResultsViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyIdentificationResultsViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyIdentificationResultsViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyIdentificationResultsViewDocumentStepTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyIdentificationResultsViewDocumentStepLoadingSpinnerAccentColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyIdentificationResultsViewRetakeButtonTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyIdentificationResultsViewContentMaskForegroundColor = IdenfyCommonColors.idenfyBackgroundColorV2?.withAlphaComponent(0.6)
    public static var idenfyIdentificationResultsViewSuccessStepTextColor = IdenfyCommonColors.idenfyStepSuccessColorV2
    public static var idenfyIdentificationResultsViewErrorStepTextColorV2 = IdenfyCommonColors.idenfyStepErrorColorV2

    // Idenfy Identification Results View Fonts

    public static var idenfyIdentificationResultsViewTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyIdentificationResultsViewDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyIdentificationResultsViewDocumentStepTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyIdentificationResultsViewDocumentStepHighlightedTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 14)

    // Idenfy Identification Results Style

    public static var idenfyIdentificationResultsViewDocumentStepLoadingSpinnerAnimationDuration = Double(4)
    public static var idenfyIdentificationResultsViewDocumentStepLoadingSpinnerRadius = CGFloat(30)
    public static var idenfyIdentificationResultsViewDocumentStepLoadingSpinnerNumberOfPulses = Int(6)

    // Idenfy Identification Results Dividers colors
    public static var idenfyIdentificationResultsDividerIconStatusLoadingTintColor: UIColor? = IdenfyCommonColors.idenfyMainColorV2?.withAlphaComponent(0.3)
    public static var idenfyIdentificationResultsDividerIconStatusErrorTintColor: UIColor? = IdenfyCommonColors.idenfyStepErrorColorV2
    public static var idenfyIdentificationResultsDividerIconStatusSuccessTintColor: UIColor? = IdenfyCommonColors.idenfyStepSuccessColorV2
}
