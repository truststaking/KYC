//
//  IdenfyInstructionsAlertUISettigsV2.swift
//  idenfyviews
//
//  Created by Viktas Juskys on 2021-05-27.
//  Copyright © 2021 iDenfy. All rights reserved.
//

import Foundation
import UIKit

@objc open class IdenfyInstructionAlertUISettigsV2: NSObject {
    // Instruction Alert Colors
    public static var idenfyInstructionAlertViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
    public static var idenfyInstructionAlertCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
    public static var idenfyInstructionAlertProgressBarFillColor = IdenfyCommonColors.idenfyMainColorV2
    public static var idenfyInstructionAlertContinueButtonTextColor = IdenfyCommonColors.idenfyWhite
    public static var idenfyInstructionAlertDetailsCardBackgroundColor = IdenfyCommonColors.idenfyPhotoResultDetailsCardBackgroundColorV2
    public static var idenfyInstructionAlertDetailsCardTitleColor = IdenfyCommonColors.idenfyMainColorV2
    
    // Instruction Alert Fonts
    public static var idenfyInstructionAlertCommonInformationTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontBoldV2, size: 22)
    public static var idenfyInstructionAlertDetailsCardTitleFont = UIFont(name: ConstsIdenfyFonts.idenfyFontRegularV2, size: 12)
    
    // Instruction Alert Style
    public static var idenfyInstructionAlertDetailsCardCornerRadius = CGFloat(4)
}
