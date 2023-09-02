//
//  IdenfyQuestionnaireViewUISettingsV2.swift
//  idenfyviews
//
//  Created by Viktas Juškys on 2022-09-19.
//  Copyright © 2022 iDenfy. All rights reserved.
//

import Foundation
import UIKit
@objc open class IdenfyQuestionnaireViewUISettingsV2: NSObject {
    // Idenfy Questionnaire View Colors

    public static var idenfyQuestionnaireViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyQuestionnaireViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyQuestionnaireViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyQuestionnaireViewSectionTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyQuestionnaireViewSectionDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyQuestionnaireViewContinueButtonDisabledTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.5)
    public static var idenfyQuestionnaireViewContinueButtonDisabledBackgroundColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.2)
    public static var idenfyQuestionnaireViewContinueButtonEnabledTextColor = IdenfyCommonColors.idenfyWhite
    
    // Question Cells
    public static var idenfyTextQuestionCellViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyTextQuestionCellViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyTextQuestionCellViewTextFieldTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyTextQuestionCellViewTextFieldPlaceholderTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.4)
    public static var idenfyTextQuestionCellViewTextFieldBackgroundColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyTextQuestionCellViewTextFieldBorderColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.06)
    public static var idenfyTextQuestionCellViewTextFieldHighlightedBorderColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyTextQuestionCellViewTextFieldErrorBorderColor = IdenfyCommonColors.idenfyRedColorV2
    public static var idenfyPasswordQuestionCellViewPasswordVisibilityIconTintColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCheckBoxQuestionCellViewUISwitchTintColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyCheckBoxQuestionCellViewUISwitchDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFileQuestionCellViewContainerBackgroundColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyFileQuestionCellViewContainerBorderColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.06).cgColor
    public static var idenfyFileQuestionCellViewUploadIconTintColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyFileQuestionCellViewCancelIconTintColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyFileQuestionCellViewFileDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyRadioQuestionCellViewRadioButtonTintColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyRadioQuestionCellViewRadioButtonDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyDateQuestionCellViewCancelButtonTintColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyDateQuestionCellViewCalendarIconTintColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyDateQuestionCellViewTimerIconTintColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCountryQuestionCellViewCountryLabelTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCountryQuestionCellViewCountryPlaceholderTextColor = IdenfyCommonColors.idenfySecondColorV2?.withAlphaComponent(0.4)
    public static var idenfyCountryQuestionCellViewCancelIconTintColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyCountryQuestionCellViewArrowIconTintColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyInputFieldErrorMessageTextColor = IdenfyCommonColors.idenfyRedColorV2

    // Idenfy Questionnaire View Fonts

    public static var idenfyQuestionnaireViewTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyQuestionnaireViewDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyQuestionnaireViewSectionTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyQuestionnaireViewSectionDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    
    // Question Cells
    public static var idenfyTextQuestionCellViewTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyTextQuestionCellViewDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 13)
    public static var idenfyTextQuestionCellTextFieldFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyCheckBoxQuestionCellViewUISwitchDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyFileQuestionCellViewFileDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyRadioQuestionCellViewRadioButtonDescriptionFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyCountryQuestionCellViewCountryLabelFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 15)
    public static var idenfyInputFieldErrorMessageFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 10)

    // Idenfy Questionnaire View Styles
    
    // Question Cells
    public static var idenfyTextQuestionCellViewTextFieldCornerRadius = CGFloat(8)
    public static var idenfyTextQuestionCellViewTextFieldBorderWidth = CGFloat(1)
    public static var idenfyFileQuestionCellViewContainerBorderWidth = CGFloat(1)
    public static var idenfyFileQuestionCellViewContainerCornerRadius = CGFloat(8)
}
