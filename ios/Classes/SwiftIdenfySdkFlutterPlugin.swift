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

                var grey700 = UIColor(hexString:"#FF1B1B1B")
                var idenfyGrey1000 = UIColor(hexString:"#000000")
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

                // ConstsIdenfyImages.idenfy_ic_gradient_splash_screen_background = "background"
                //ConstsIdenfyImages.idenfy_ic_splash_screen_logo


                //Buttons settings
                IdenfyButtonsUISettingsV2.idenfyGradientButtonColorStart = idenfyLime
                IdenfyButtonsUISettingsV2.idenfyGradientButtonColorEnd = idenfyLime

                
                //Additional Support View
                IdenfyAdditionalSupportViewUISettingsV2.idenfyAdditionalSupportViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyAdditionalSupportViewUISettingsV2.idenfyAdditionalSupportViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyAdditionalSupportViewUISettingsV2.idenfyAdditionalSupportViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyAdditionalSupportViewUISettingsV2.idenfyAdditionalSupportViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2  
                IdenfyAdditionalSupportViewUISettingsV2.idenfyAdditionalSupportViewCommonInformationDescriptionEmailTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Camera Permission View
                IdenfyCameraPermissionViewUISettingsV2.idenfyCameraPermissionViewGoToSettingsButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyCameraPermissionViewUISettingsV2.idenfyCameraPermissionViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyCameraPermissionViewUISettingsV2.idenfyCameraPermissionViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyCameraPermissionViewUISettingsV2.idenfyCameraPermissionViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyCameraPermissionViewUISettingsV2.idenfyCameraPermissionViewGuidancePermissionTextColor = IdenfyCommonColors.idenfySecondColorV2


                //Confirmation View UI
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewBeginIdentificationButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewDescriptionHighlightedTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewDocumentStepTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewDocumentStepTitleHighlightedTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewUploadDocumentPhotoTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewDocumentStepCellNumberTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewDocumentStepCellTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewContentMaskForegroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewUploadIconTintColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyConfirmationViewUISettingsV2.idenfyDocumentConfirmationViewDocumentStepCircleTintColor = IdenfyCommonColors.idenfyMainColorV2


                //Country Selection View
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountrySearchBarBackgroundColor = idenfyGrey1000;
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewBackgroundColor = idenfyGrey700
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewBorderColor = idenfyGrey700
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewCellBackgroundColor = idenfyGrey1000
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewCellBorderColor = idenfyGrey700
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountrySearchBarBorderWidth = 1
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewBorderWidth = 1
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountrySearchBarTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountrySearchBarHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewCellTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewCellHighlightedTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountryTableViewCellHighlightedBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyCountrySelectionViewUISettingsV2.idenfyCountrySelectionViewCountrySearchBarBorderColor = idenfyGrey700


                //Doc Not Found Alert UI
                IdenfyDocNotFoundAlertUISettigsV2.idenfyDocNotFoundAlertContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDocNotFoundAlertUISettigsV2.idenfyDocNotFoundAlertViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyDocNotFoundAlertUISettigsV2.idenfyDocNotFoundAlertCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyDocNotFoundAlertUISettigsV2.idenfyDocNotFoundAlertCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyDocNotFoundAlertUISettigsV2.idenfyDocNotFoundAlertDescriptionHighlightedTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Document Camera Session UI
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionTakePhotoButtonUnFocusedBackgroundColor = idenfyGrey300
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionBottomActionButtonsViewBackgroundColor = IdenfyCommonColors.idenfyDrawerBackgroundColor
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionTakePhotoButtonUnFocusedTintColor = IdenfyCommonColors.idenfyTakePhotoButtonIconUnFocused
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionTakePhotoButtonFocusedTintColor = IdenfyCommonColors.idenfyWhite
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionTakePhotoButtonFocusedBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionUploadPhotoButtonTintColor = IdenfyCommonColors.idenfyWhite.withAlphaComponent(0.4)
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionToggleFlashButtonTintColor = IdenfyCommonColors.idenfyWhite
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionSwitchLensButtonTintColor = IdenfyCommonColors.idenfyWhite
                IdenfyDocumentCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessioninstructionDialogButtonTintColor = IdenfyCommonColors.idenfyWhite


                //Document Selection View
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewBackgroundColor = idenfyGrey700
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewBorderColor = idenfyGrey700
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellBackgroundColor = idenfyGrey1000
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellBorderColor = idenfyGrey700
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewContinueButtonDisabledBackgroundColor = idenfyLime
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewBorderWidth = 1
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellBorderWidth = 1
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewContinueButtonDisabledTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewContinueButtonEnabledTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellHighlightedTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellHighlightedBackgroundColor = IdenfyCommonColors.idenfyMainColorV2


                //Drawer UI
                IdenfyDrawerUISettingsV2.idenfyDrawerGradientBackgroundTopColor = idenfyYellowLime
                IdenfyDrawerUISettingsV2.idenfyDrawerGradientBackgroundBottomColor = idenfyLime
                IdenfyDrawerUISettingsV2.idenfyDrawerExpandButtonTintColor = IdenfyCommonColors.idenfyWhite
                IdenfyDrawerUISettingsV2.idenfyDrawerTitleTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyDrawerUISettingsV2.idenfyDrawerDescriptionTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyDrawerUISettingsV2.idenfyDrawerCurrentInstructionTitleTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyDrawerUISettingsV2.idenfyDrawerCurrentInstructionDescriptionTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyDrawerUISettingsV2.idenfyDrawerInstructionControlsTintColor = IdenfyCommonColors.idenfyWhite
                IdenfyDrawerUISettingsV2.idenfyDrawerCurrentInstructionIndicatorColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDrawerUISettingsV2.idenfyDrawerNextInstructionButtonColor = IdenfyCommonColors.idenfyWhite
                IdenfyDrawerUISettingsV2.idenfyDrawerPreviousInstructionButtonColor = IdenfyCommonColors.idenfyWhite


                //Dynamic Camera On Boarding View
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonBackgroundColor = idenfyLime
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingEnabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDetailsCardBackgroundColor = idenfyGrey700
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingViewProgressBarFillColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingViewProgressBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyDynamicCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDetailsCardTitleColor = IdenfyCommonColors.idenfyMainColorV2


                //Face Authentication Common UI
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryAlertRetryButtonBackgroundColor =  IdenfyCommonColors.idenfyMainColorV2
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryAlertRetryButtonButtonBorderColor = idenfyLime
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryAlertViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyFaceAuthenticationCommonUISettingsV2.idenfyFaceAuthenticationRetryAlertRetryButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Face Authentication Initial View UI
                IdenfyFaceAuthenticationInitialViewUISettingsV2.idenfyFaceAuthenticationInitialViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyFaceAuthenticationInitialViewUISettingsV2.idenfyFaceAuthenticationInitialViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyFaceAuthenticationInitialViewUISettingsV2.idenfyFaceAuthenticationInitialViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyFaceAuthenticationInitialViewUISettingsV2.idenfyFaceAuthenticationInitialViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyFaceAuthenticationInitialViewUISettingsV2.idenfyFaceAuthenticationInitialViewAuthenticationAttemptCountColor = IdenfyCommonColors.idenfyMainColorV2


                //Face Authentication Results View UI
                IdenfyFaceAuthenticationResultsViewUISettingsV2.idenfyFaceAuthenticationResultsViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyFaceAuthenticationResultsViewUISettingsV2.idenfyFaceAuthenticationResultsViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyFaceAuthenticationResultsViewUISettingsV2.idenfyFaceAuthenticationResultsViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyFaceAuthenticationResultsViewUISettingsV2.idenfyFaceAuthenticationResultsViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2


                //Face Camera Session UI
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyFaceCameraSessionUISettingsV2.idenfyDocumentCameraPreviewSessionUploadPhotoButtonTintColor = idenfyGrey100
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionTakePhotoButtonUnFocusedBackgroundColor = idenfyGrey300
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionTakePhotoButtonUnFocusedTintColor = IdenfyCommonColors.idenfyTakePhotoButtonIconUnFocused
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionTakePhotoButtonFocusedTintColor = IdenfyCommonColors.idenfyWhite
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionTakePhotoButtonFocusedBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyFaceCameraSessionUISettingsV2.idenfyFaceCameraPreviewSessionFaceOvalColor = IdenfyCommonColors.idenfyWhite


                //Glare And Blur Alert UI
                IdenfyGlareAndBlurAlertUISettigsV2.idenfyGlareAndBlurAlertViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyGlareAndBlurAlertUISettigsV2.idenfyGlareAndBlurAlertCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2


                //Identification Results View UI 
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewRetakeButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewDocumentStepTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewDocumentStepLoadingSpinnerAccentColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewContentMaskForegroundColor = IdenfyCommonColors.idenfyBackgroundColorV2 
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewSuccessStepTextColor = IdenfyCommonColors.idenfyStepSuccessColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsViewErrorStepTextColorV2 = IdenfyCommonColors.idenfyStepErrorColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsDividerIconStatusLoadingTintColor = IdenfyCommonColors.idenfyMainColorV2 
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsDividerIconStatusErrorTintColor = IdenfyCommonColors.idenfyStepErrorColorV2
                IdenfyIdentificationResultsViewUISettingsV2.idenfyIdentificationResultsDividerIconStatusSuccessTintColor = IdenfyCommonColors.idenfyStepSuccessColorV2


                //Identification Success Results View UI
                IdenfyIdentificationSuccessResultsViewUISettingsV2.idenfyIdentificationSuccessResultsViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyIdentificationSuccessResultsViewUISettingsV2.idenfyIdentificationSuccessResultsViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIdentificationSuccessResultsViewUISettingsV2.idenfyIdentificationSuccessResultsViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIdentificationSuccessResultsViewUISettingsV2.idenfyIdentificationSuccessResultsViewIdentifiedTitleTextColor = IdenfyCommonColors.idenfyStepSuccessColorV2 


                //Identification Suspected Results View UI
                IdenfyIdentificationSuspectedResultsViewUISettingsV2.idenfyIdentificationSuspectedResultsViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyIdentificationSuspectedResultsViewUISettingsV2.idenfyIdentificationSuspectedResultsViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyIdentificationSuspectedResultsViewUISettingsV2.idenfyIdentificationSuspectedResultsViewCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIdentificationSuspectedResultsViewUISettingsV2.idenfyIdentificationSuspectedResultsViewCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2 
                IdenfyIdentificationSuspectedResultsViewUISettingsV2.idenfyIdentificationSuspectedResultsViewCommonInformationDescriptionEmailTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Instruction Alert UI
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertDetailsCardBackgroundColor = idenfyGrey700
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertDetailsCardTitleColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyInstructionAlertUISettigsV2.idenfyInstructionAlertProgressBarFillColor = IdenfyCommonColors.idenfyMainColorV2


                //Issued Country View UI
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewCountryViewBackgroundColor = idenfyGrey700
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewCountryViewBorderColor = idenfyLime
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewBeginIdentificationButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewCountryViewBorderWidth = 1
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyIssuedCountryViewUISettingsV2.idenfyIssuedCountryViewCountryLabelTextColor = IdenfyCommonColors.idenfySecondColorV2


                //Language Selection View
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewBackgroundColor = idenfyGrey700
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellHighlightedTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellHighlightedBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewBorderColor = idenfyGrey700
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellBackgroundColor = idenfyGrey1000
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellBorderColor = idenfyGrey700
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewBorderWidth = 1
                IdenfyLanguageSelectionViewUISettingsV2.idenfyLanguageSelectionViewLanguageTableViewCellBorderWidth = 1


                //Loading HUD UI
                IdenfyLoadingHUDUISettingsV2.idenfyLoadingHUDBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyLoadingHUDUISettingsV2.idenfyLoadingHUDTitleColor = IdenfyCommonColors.idenfyWhite
                IdenfyLoadingHUDUISettingsV2.idenfyLoadingHUDDescriptionColor = IdenfyCommonColors.idenfyWhite


                //Manual Reviewing Status Approved View UI
                IdenfyManualReviewingStatusApprovedViewUISettingsV2.idenfyManualReviewingStatusApprovedCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyManualReviewingStatusApprovedViewUISettingsV2.idenfyManualReviewingStatusApprovedContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusApprovedViewUISettingsV2.idenfyManualReviewingStatusApprovedViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyManualReviewingStatusApprovedViewUISettingsV2.idenfyManualReviewingStatusApprovedCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2


                //Manual Reviewing Status Failed View UI
                IdenfyManualReviewingStatusFailedViewUISettingsV2.idenfyManualReviewingStatusFailedCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyManualReviewingStatusFailedViewUISettingsV2.idenfyManualReviewingStatusFailedContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusFailedViewUISettingsV2.idenfyManualReviewingStatusFailedViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyManualReviewingStatusFailedViewUISettingsV2.idenfyManualReviewingStatusFailedCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyManualReviewingStatusFailedViewUISettingsV2.idenfyManualReviewingStatusFailedCommonInformationDescriptionEmailTextColor = IdenfyCommonColors.idenfyMainColorV2


                //Manual Reviewing Status Waiting View UI
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingCommonInformationTopDescriptionTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingTimerTitleTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStopWaitingButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStepTitleColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingCompletedStepTitleColor = IdenfyCommonColors.idenfyWhite
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStepViewHolderBackgroundColor = IdenfyCommonColors.idenfyWhite
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStepViewHolderCompletedBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStepViewHolderShadowColor = IdenfyCommonColors.idenfyBlack
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStepViewHolderShadowOpacity = 0.5
                IdenfyManualReviewingStatusWaitingViewUISettingsV2.idenfyManualReviewingStatusWaitingStepViewHolderShadowRadius = 1


                //MFA Captcha View UI
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewHintTextColor = idenfyGrey100
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputBorderColor = idenfyLime
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputFocusedBorderColor = idenfyLime
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputViewBackgroundColor = idenfyGrey700
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFACaptchaViewUISettingsV2.idenfyMFACaptchaViewInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2
                

                //MFA General View UI
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewDescriptionHighlightedTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputBorderColor = idenfyLime
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputFocusedBorderColor = idenfyLime
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputViewBackgroundColor = idenfyGrey700
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewHintTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFAGeneralViewUISettingsV2.idenfyMFAGeneralViewInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2


                //MFA Method Selection View UI
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputBorderColor = idenfyLime
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputFocusedBorderColor = idenfyLime
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputViewBackgroundColor = idenfyGrey700
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewHintTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMFAMethodSelectionViewUISettingsV2.idenfyMFAMethodSelectionViewInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2


                //Mrz Not Found Alert UI
                IdenfyMrzNotFoundAlertUISettigsV2.idenfyMrzNotFoundAlertContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyMrzNotFoundAlertUISettigsV2.idenfyMrzNotFoundAlertViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyMrzNotFoundAlertUISettigsV2.idenfyMrzNotFoundAlertCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMrzNotFoundAlertUISettigsV2.idenfyMrzNotFoundAlertCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyMrzNotFoundAlertUISettigsV2.idenfyMrzNotFoundAlertRetakePhotoButtonTextColor = IdenfyCommonColors.idenfyMainColorV2


                //NFC Reading Time Out View UI
                IdenfyNFCReadingTimeOutViewUISettingsV2.idenfyNFCReadingTimeOutContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyNFCReadingTimeOutViewUISettingsV2.idenfyNFCReadingTimeOutViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyNFCReadingTimeOutViewUISettingsV2.idenfyNFCReadingTimeOutCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyNFCReadingTimeOutViewUISettingsV2.idenfyNFCReadingTimeOutCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2


                //NFC Reading View UI
                IdenfyNFCReadingViewUISettingsV2.idenfyNFCReadingContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyNFCReadingViewUISettingsV2.idenfyNFCReadingViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyNFCReadingViewUISettingsV2.idenfyNFCReadingCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyNFCReadingViewUISettingsV2.idenfyNFCReadingCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfyMainColorV2


                //NFC Required View UI
                IdenfyNFCRequiredViewUISettingsV2.idenfyNFCRequiredContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyNFCRequiredViewUISettingsV2.idenfyNFCRequiredViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyNFCRequiredViewUISettingsV2.idenfyNFCRequiredCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyNFCRequiredViewUISettingsV2.idenfyNFCRequiredCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2


                //Pdf Result View UI
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewRetakePdfButtonBackgroundColor = idenfyLime
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewDetailsCardBackgroundColor = idenfyGrey700
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewRetakePdfButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewRetakePdfButtonBorderColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewDetailsCardTitleColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPdfResultViewUISettingsV2.idenfyPdfResultViewTitleColor = IdenfyCommonColors.idenfySecondColorV2


                //Photo Result View UI
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewRetakePhotoButtonBackgroundColor = idenfyLime
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewDetailsCardBackgroundColor = idenfyGrey700
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewDetailsCardTitleColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewPhotoBorderWidth = 1
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewRetakePhotoButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewRetakePhotoButtonBorderColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewPhotoBorderColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewTitleColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewPoweredByIdenfyTitleColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewAutoCaptureFailureCardImageColor = IdenfyCommonColors.idenfyRedColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewAutoCaptureFailureCardTitleColor = IdenfyCommonColors.idenfyRedColorV2
                IdenfyPhotoResultViewUISettingsV2.idenfyPhotoResultViewAutoCaptureFailureCardBackgroundColor = IdenfyCommonColors.idenfyErrorLightRedColorV2


                //Privacy Policy View UI 
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyAgreeButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeButtonBackgroundColor = idenfyGrey700
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeButtonTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeButtonBorderColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogAgreeButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCancelButtonBackgroundColor = idenfyGrey700
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCancelButtonTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCancelButtonBorderColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyPrivacyPolicyViewUISettingsV2.idenfyPrivacyPolicyDisagreeDialogCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2


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
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewUsernameInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewPasswordInputViewHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewUsernameInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderLoginViewUISettingsV2.idenfyProviderLoginViewPasswordInputViewTextColor = IdenfyCommonColors.idenfySecondColorV2


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
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderSearchBarTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderSearchBarHintTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewCellTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewCellHighlightedTextColor = IdenfyCommonColors.idenfyWhite
                IdenfyProviderSelectionViewUISettingsV2.idenfyProviderSelectionViewProviderTableViewCellHighlightedBackgroundColor = IdenfyCommonColors.idenfyMainColorV2


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
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewSectionTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyQuestionnaireViewSectionDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewTextFieldTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewTextFieldPlaceholderTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyTextQuestionCellViewTextFieldErrorBorderColor = IdenfyCommonColors.idenfyRedColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyPasswordQuestionCellViewPasswordVisibilityIconTintColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyCheckBoxQuestionCellViewUISwitchDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyFileQuestionCellViewCancelIconTintColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyFileQuestionCellViewFileDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyRadioQuestionCellViewRadioButtonDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyDateQuestionCellViewTimerIconTintColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyCountryQuestionCellViewCountryLabelTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyCountryQuestionCellViewCountryPlaceholderTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyCountryQuestionCellViewCancelIconTintColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyCountryQuestionCellViewArrowIconTintColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyQuestionnaireViewUISettingsV2.idenfyInputFieldErrorMessageTextColor = IdenfyCommonColors.idenfyRedColorV2


                //Static Camera On Boarding View
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonBackgroundColor = idenfyLime
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingEnabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingDisabledContinueButtonTextColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingCommonInformationTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingCommonInformationDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingViewProgressBarFillColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingViewProgressBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingInstructionDetailsTableViewCellTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingInstructionDetailsTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyStaticCameraOnBoardingViewUISettingsV2.idenfyCameraOnBoardingInstructionDetailsCellCircleTintColor = IdenfyCommonColors.idenfyMainColorV2


                //Toolbar UI
                IdenfyToolbarUISettingsV2.idenfyLogoHeight = 13
                IdenfyToolbarUISettingsV2.idenfyLogoWidth = 70.5
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarLogoIconTintColor = nil
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
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewBackgroundColor = IdenfyCommonColors.idenfyBackgroundColorV2
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewTitleTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewDescriptionTextColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewCroppingBackgroundColor = IdenfyCommonColors.idenfySecondColorV2
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewCroppingBackgroundDimColor = IdenfyCommonColors.idenfyWhite.withAlphaComponent(0.3)
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewCroppingRectangleGridColor = IdenfyCommonColors.idenfyWhite.withAlphaComponent(0.4)
                IdenfyUploadPhotoViewUISettingsV2.idenfyUploadPhotoViewCroppingRectangleCornerColor = IdenfyCommonColors.idenfyWhite
                

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

                let idenfyUISettings = IdenfyUIBuilderV2()
                    .build()

                let idenfySettingsV2 = IdenfyBuilderV2()
                    .withAuthToken(authToken)
                    // .withUISettingsV2(idenfyUISettings)
                    .build()

                let idenfyViewsV2: IdenfyViewsV2 = IdenfyViewsBuilderV2()
                    .withSplashScreenV2View(SplashScreenV2View())
                    .build()

                let idenfyController = IdenfyController.shared
                idenfyController.initializeIdenfySDKV2WithManual(idenfySettingsV2: idenfySettingsV2, idenfyViewsV2: idenfyViewsV2)
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
