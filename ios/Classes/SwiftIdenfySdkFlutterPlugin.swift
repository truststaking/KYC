import Flutter
import UIKit
import iDenfySDK
import idenfycore
import idenfyviews

public class SwiftIdenfySdkFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "idenfy_sdk_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftIdenfySdkFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "getPlatformVersion" {
          result("iOS " + UIDevice.current.systemVersion)
        } else if call.method == "start" {
            if let arguments = call.arguments as? [String: Any],
               let authToken = arguments["authToken"] as? String {

                var idenfyGrey700 = UIColor(hexString:"#1B1B1B")
                var idenfyGrey300 = UIColor(hexString:"#383838")
                var idenfyGrey100 = UIColor(hexString:"#888888")
                var idenfyGrey50 = UIColor(hexString:"#D0D0D0")
                var idenfyLime = UIColor(hexString:"#AEFB4F")
                var idenfyYellowLime = UIColor(hexString:"#FBF44F")


                //Changing common iDenfy colors
                IdenfyCommonColors.idenfyMainColorV2 = UIColor(hexString: "#121212")
                IdenfyCommonColors.idenfyMainDarkerColorV2 = UIColor(hexString: "#AEFB4F")
                IdenfyCommonColors.idenfySecondColorV2 = UIColor(hexString: "#FFFFFF")
                IdenfyCommonColors.idenfyBackgroundColorV2 = UIColor(hexString:"#121212")
                IdenfyCommonColors.idenfyLogoTintColorV2 = UIColor(hexString: "#FFFFFF")


                //Buttons settings
                IdenfyButtonsUISettingsV2.idenfyGradientButtonColorStart = idenfyYellowLime
                IdenfyButtonsUISettingsV2.idenfyGradientButtonColorEnd = idenfyLime

                
                //Additional Support View
                IdenfyAdditionalSupportViewUISettingsV2.idenfyAdditionalSupportViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Camera Permission View
                IdenfyCameraPermissionViewUISettingsV2.idenfyCameraPermissionViewGoToSettingsButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Confirmation View UI
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewBeginIdentificationButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Country Selection View
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountrySearchBarBackgroundColor = idenfyGrey700;
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewBackgroundColor = idenfyGrey700
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewBorderColor = idenfyLime
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewCellBackgroundColor = idenfyGrey700
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewCellBorderColor = idenfyLime
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountrySearchBarBorderWidth = 1
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewBorderWidth = 1


                //Doc Not Found Alert UI
                IdenfyDocNotFoundAlertUISettigsV2.idenfyDocNotFoundAlertContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Document Camera Session UI
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionTakePhotoButtonUnFocusedBackgroundColor = idenfyGrey300


                //Document Selection View
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewBackgroundColor = idenfyGrey700
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewBorderColor = idenfyLime
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellBackgroundColor = idenfyGrey700
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellBorderColor = idenfyLime
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewContinueButtonDisabledBackgroundColor = idenfyLime
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewBorderWidth = 1
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellBorderWidth = 1
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewContinueButtonDisabledTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewContinueButtonEnabledTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Drawer UI
                IdenfyDrawerUISettingsV2.idenfyDrawerGradientBackgroundTopColor = idenfyYellowLime
                IdenfyDrawerUISettingsV2.idenfyDrawerGradientBackgroundBottomColor = idenfyLime


                //Dynamic Camera On Boarding View
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonBackgroundColor = idenfyLime
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingEnabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDetailsCardBackgroundColor = idenfyGrey700


                //Face Authentication Common UI
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryAlertRetryButtonBackgroundColor =  IdenfyCommonColors.idenfyMainColorV2
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryAlertRetryButtonButtonBorderColor = idenfyLime


                //Face Authentication Initial View UI
                IdenfyFaceAuthenticationInitialViewUISettingsV2.idenfyFaceAuthenticationInitialViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Face Authentication Results View UI
                IdenfyFaceAuthenticationResultsViewUISettingsV2.idenfyFaceAuthenticationResultsViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Face Camera Session UI
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyFaceCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionUploadPhotoButtonTintColor = idenfyGrey100
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionTakePhotoButtonUnFocusedBackgroundColor = idenfyGrey300


                //Identification Results View UI 
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewRetakeButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Identification Suspected Results View UI
                IdenfyIdentificationSuspectedResultsViewUISettingsV2.idenfyIdentificationSuspectedResultsViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Instruction Alert UI
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertDetailsCardBackgroundColor = idenfyGrey700
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertDetailsCardTitleColor = IdenfyCommonColors.idenfySecondColorV2


                //Issued Country View UI
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewCountryViewBackgroundColor = idenfyGrey700
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewCountryViewBorderColor = idenfyLime
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewBeginIdentificationButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewCountryViewBorderWidth = 1


                //Language Selection View
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewBackgroundColor = idenfyGrey700
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewBorderColor = idenfyLime
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellBackgroundColor = idenfyGrey700
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellBorderColor = idenfyLime
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewBorderWidth = 1
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellBorderWidth = 1


                //Loading HUD UI
                IdenfyLoadingHUDUISettingsV2.idenfyLoadingHUDBackgroundColor = IdenfyCommonColors.idenfyMainColorV2


                //Manual Reviewing Status Approved View UI
                IdenfyManualReviewingStatusApprovedViewUISettingsV2.idenfyManualReviewingStatusApprovedCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyManualReviewingStatusApprovedViewUISettingsV2.idenfyManualReviewingStatusApprovedContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Manual Reviewing Status Failed View UI
                IdenfyManualReviewingStatusFailedViewUISettingsV2.idenfyManualReviewingStatusFailedCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyManualReviewingStatusFailedViewUISettingsV2.idenfyManualReviewingStatusFailedContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Manual Reviewing Status Waiting View UI
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingCommonInformationTopDescriptionTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingTimerTitleTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStopWaitingButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //MFA Captcha View UI
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewHintTextColor = idenfyGrey100
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputBorderColor = idenfyLime
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputFocusedBorderColor = idenfyLime
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputViewBackgroundColor = idenfyGrey700
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                

                //MFA General View UI
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewDescriptionHighlightedTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputBorderColor = idenfyLime
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputFocusedBorderColor = idenfyLime
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputViewBackgroundColor = idenfyGrey700
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //MFA Method Selection View UI
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputBorderColor = idenfyLime
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputFocusedBorderColor = idenfyLime
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputViewBackgroundColor = idenfyGrey700
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Mrz Not Found Alert UI
                IdenfyMrzNotFoundAlertUISettigsV2.idenfyMrzNotFoundAlertContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //NFC Reading Time Out View UI
                IdenfyNFCReadingTimeOutViewUISettingsV2.idenfyNFCReadingTimeOutContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //NFC Reading View UI
                IdenfyNFCReadingViewUISettingsV2.idenfyNFCReadingContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //NFC Required View UI
                IdenfyNFCRequiredViewUISettingsV2.idenfyNFCRequiredContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Pdf Result View UI
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewRetakePdfButtonBackgroundColor = idenfyLime
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewDetailsCardBackgroundColor = idenfyGrey700
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Photo Result View UI
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewRetakePhotoButtonBackgroundColor = idenfyLime
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewDetailsCardBackgroundColor = idenfyGrey700
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewDetailsCardTitleColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewPhotoBorderWidth = 1


                //Privacy Policy View UI 
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyAgreeButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeButtonBackgroundColor = idenfyGrey700
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeButtonTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeButtonBorderColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogAgreeButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCancelButtonBackgroundColor = idenfyGrey700
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCancelButtonTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCancelButtonBorderColor = IdenfyCommonColors.idenfySecondColorV2


                //Provider Login View UI
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewUsernameHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewPasswordHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewUsernameInputBorderColor = idenfyLime
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewPasswordInputBorderColor = idenfyLime
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewUsernameInputFocusedBorderColor = idenfyLime
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewPasswordInputFocusedBorderColor = idenfyLime
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewUsernameInputViewBackgroundColor = idenfyGrey700
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewPasswordInputViewBackgroundColor = idenfyGrey700
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Provider Selection View UI
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderSearchBarBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewBackgroundColor = idenfyGrey700
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewBorderColor = idenfyLime
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewCellBackgroundColor = idenfyGrey700
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewCellBorderColor = idenfyLime
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderSearchBarBorderColor = idenfyLime
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderSearchBarBorderWidth = 1
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewBorderWidth = 1
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewCellBorderWidth = 1


                //Questionnaire View UI
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewContinueButtonDisabledBackgroundColor = idenfyLime
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewContinueButtonDisabledTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewContinueButtonEnabledTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewTextFieldBackgroundColor = idenfyGrey700
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewTextFieldBorderColor = idenfyLime
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewTextFieldHighlightedBorderColor = idenfyLime
                IdenfyQuestionnaireViewUISettingsV2.idenfyCheckBoxQuestionCellViewUISwitchTintColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyFileQuestionCellViewContainerBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyFileQuestionCellViewContainerBorderColor = idenfyLime.cgColor
                IdenfyQuestionnaireViewUISettingsV2.idenfyFileQuestionCellViewUploadIconTintColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyRadioQuestionCellViewRadioButtonTintColor = idenfyGrey700
                IdenfyQuestionnaireViewUISettingsV2.idenfyDateQuestionCellViewCancelButtonTintColor = idenfyGrey700
                IdenfyQuestionnaireViewUISettingsV2.idenfyDateQuestionCellViewCalendarIconTintColor = idenfyGrey700


                //Static Camera On Boarding View
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonBackgroundColor = idenfyLime
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingEnabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Toolbar UI
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarLogoIconTintColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarBackIconTintColor = UIColor.white
                IdenfyToolbarUISettingsV2.idenfyLanguageSelectionToolbarLanguageSelectionIconTintColor = UIColor.white
                IdenfyToolbarUISettingsV2.idenfyLanguageSelectionToolbarCloseIconTintColor = UIColor.white
                IdenfyToolbarUISettingsV2.idenfyCameraPreviewSessionToolbarBackIconTintColor = UIColor.white


                //Upload Photo View UI
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewCroppingBorderColor = idenfyLime
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewChooseAnotherPhotoButtonBackgroundColor = idenfyGrey700
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewChooseAnotherPhotoButtonTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewChooseAnotherPhotoButtonBorderColor = idenfyLime
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewContinuePhotoButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewCroppingViewBorderWidth = 1
                

                // //Changing face liveness UI colors
                // let livenessSettings = IdenfyLivenessUISettings()
                // livenessSettings.livenessFrameColor = UIColor.red
                // livenessSettings.livenessIdentificationOvalProgressColor1 = UIColor.white
                // livenessSettings.livenessIdentificationOvalProgressColor2 = UIColor.white
                // livenessSettings.livenessFeedbackBackgroundColor = UIColor.green
                // livenessSettings.livenessFrameBackgroundColor = UIColor.yellow
                // livenessSettings.livenessReadyScreenForegroundColor = UIColor.gray
                // livenessSettings.livenessReadyScreenBackgroundColors = [UIColor.blue]
                // livenessSettings.livenessReadyScreenTextBackgroundColor = UIColor.systemPink
                // livenessSettings.livenessReadyScreenButtonBorderColor = UIColor.red
                // livenessSettings.livenessReadyScreenButtonBackgroundNormalColor = UIColor.orange
                // livenessSettings.livenessReadyScreenButtonBackgroundHighlightedColor = UIColor.blue
                // livenessSettings.livenessReadyScreenButtonBackgroundDisabledColor = UIColor.black
                // livenessSettings.livenessResultScreenForegroundColor = UIColor.red
                // livenessSettings.livenessResultScreenIndicatorColor = UIColor.yellow
                // livenessSettings.livenessResultScreenUploadProgressFillColor = UIColor.green
                // livenessSettings.livenessResultScreenUploadProgressTrackColor = UIColor.black
                // livenessSettings.livenessIdentificationProgressStrokeColor = UIColor.blue

                let idenfySettingsV2 = IdenfyBuilderV2()
                    .withAuthToken(authToken)
                    .build()

                let idenfyController = IdenfyController.shared
                idenfyController.initializeIdenfySDKV2WithManual(idenfySettingsV2: idenfySettingsV2)
                let idenfyVC = idenfyController.instantiateNavigationController()

                UIApplication.shared.keyWindow?.rootViewController?.present(idenfyVC, animated: true, completion: nil)

                idenfyController.handleIdenfyCallbacksWithManualResults(idenfyIdentificationResult: {
                    idenfyIdentificationResult
                    in
                    do {
                        let jsonEncoder = JSONEncoder()
                        let jsonData = try jsonEncoder.encode(idenfyIdentificationResult)
                        let string = String(data: jsonData, encoding: String.Encoding.utf8)
                        result(string)
                    } catch {
                    }
                })
            }
        } else if call.method == "startFaceAuth" {
            if let arguments = call.arguments as? [String: Any],
               let withImmediateRedirect = arguments["withImmediateRedirect"] as? Bool,
               let authenticationToken = arguments["token"] as? String {
                let idenfyFaceAuthUISettings = IdenfySettingsDecoder.decodeFaceAuthUISettings(arguments["idenfyFaceAuthUISettings"] as? [String : AnyObject?])
                let idenfyController = IdenfyController.shared
                let faceAuthenticationInitialization = FaceAuthenticationInitialization(authenticationToken: authenticationToken, withImmediateRedirect: withImmediateRedirect, idenfyFaceAuthUISettings: idenfyFaceAuthUISettings)
                idenfyController.initializeFaceAuthentication(faceAuthenticationInitialization: faceAuthenticationInitialization)
                let idenfyVC = idenfyController.instantiateNavigationController()
                
                UIApplication.shared.keyWindow?.rootViewController?.present(idenfyVC, animated: true, completion: nil)
                
                idenfyController.handleIdenfyCallbacksForFaceAuthentication(faceAuthenticationResult: { faceAuthenticationResult in
                    do {
                        let jsonEncoder = JSONEncoder()
                        let jsonData = try jsonEncoder.encode(faceAuthenticationResult)
                        let string = String(data: jsonData, encoding: String.Encoding.utf8)
                        result(string)
                    } catch {
                    }
                })
            }
        }
    }
}

class IdenfySettingsDecoder {
    
    static func decodeFaceAuthUISettings(_ json: [String: AnyObject?]?) -> IdenfyFaceAuthUISettings {
        let faceAuthUISettings = IdenfyFaceAuthUISettings()
        if let unwrappedLanguageSelectionNeeded = json?["isLanguageSelectionNeeded"] as? Bool {
            faceAuthUISettings.isLanguageSelectionNeeded = unwrappedLanguageSelectionNeeded
        }
        if let unwrappedSkipOnBoardingView = json?["skipOnBoardingView"] as? Bool {
            faceAuthUISettings.skipOnBoardingView = unwrappedSkipOnBoardingView
        }
        return faceAuthUISettings
    }
}
