//
//  IdenfyPhotoResultViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2020-02-12.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyPhotoResultViewUISettingsV2: NSObject {
    // Idenfy Photo Results View Colors

    public static var idenfyPhotoResultViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyPhotoResultViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyPhotoResultViewDescriptionTextColor =
        IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyPhotoResultViewRetakePhotoButtonBackgroundColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyPhotoResultViewRetakePhotoButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyPhotoResultViewRetakePhotoButtonBorderColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyPhotoResultViewContinueButtonTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyPhotoResultViewPhotoBorderColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyPhotoResultViewDetailsCardBackgroundColor = IdenfyCommonColors.idenfyPhotoResultDetailsCardBackgroundColorV2
    public static var idenfyPhotoResultViewDetailsCardTitleColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyPhotoResultViewTitleColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyPhotoResultViewPoweredByIdenfyTitleColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.6)
    public static var idenfyPhotoResultViewAutoCaptureFailureCardImageColor = IdenfyCommonColors.idenfyRedColorV2
    public static var idenfyPhotoResultViewAutoCaptureFailureCardTitleColor = IdenfyCommonColors.idenfyRedColorV2
    public static var idenfyPhotoResultViewAutoCaptureFailureCardBackgroundColor = IdenfyCommonColors.idenfyErrorLightRedColorV2

    // Idenfy Photo Results View Fonts

    public static var idenfyPhotoResultViewTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 20)
    public static var idenfyPhotoResultViewDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyPhotoResultViewDetailsCardTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 12)
    public static var idenfyPhotoResultViewPoweredByIdenfyTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 12)

    // Idenfy Photo Results View Style

    public static var idenfyPhotoResultViewPhotoBorderWidth = CGFloat(2)
    public static var idenfyPhotoResultViewPhotoCornerRadius = CGFloat(4)
    public static var idenfyPhotoResultViewDetailsCardCornerRadius = CGFloat(4)
}
