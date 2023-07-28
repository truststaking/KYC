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


                //Changing common iDenfy colors
                IdenfyCommonColors.idenfyMainColorV2 = UIColor(hexString: "#121212")
                IdenfyCommonColors.idenfyMainDarkerColorV2 = UIColor(hexString: "#AEFB4F")
                IdenfyCommonColors.idenfySecondColorV2 = UIColor(hexString: "#FFFFFF")
                IdenfyCommonColors.idenfyBackgroundColorV2 = UIColor(hexString:"#121212")
                IdenfyCommonColors.idenfyLogoTintColorV2 = UIColor(hexString: "#FFFFFF")

                //Customizing Tooblar
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarBackgroundColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarLogoIconTintColor = IdenfyCommonColors.idenfyMainColorV2
                IdenfyToolbarUISettingsV2.idenfyDefaultToolbarBackIconTintColor = UIColor.white
                IdenfyToolbarUISettingsV2.idenfyLanguageSelectionToolbarLanguageSelectionIconTintColor = UIColor.white
                IdenfyToolbarUISettingsV2.idenfyLanguageSelectionToolbarCloseIconTintColor = UIColor.white
                IdenfyToolbarUISettingsV2.idenfyCameraPreviewSessionToolbarBackIconTintColor = UIColor.white

                //Changing specific screen colors (Every screen has its own UI Settings class)
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewBackgroundColor = UIColor(hexString:"#1B1B1B")
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewTitleTextColor = UIColor(hexString: "#FFFFFF")
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTableViewCellBorderColor = UIColor.brown

                //Changeing specific screen fonts (Every screen has its own UI Settings class)
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewTitleFont = UIFont.systemFont(ofSize: 20)
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTypeFont = UIFont.systemFont(ofSize: 14)
                IdenfyDocumentSelectionViewUISettingsV2.idenfyDocumentSelectionViewDocumentTypeHighlightedFont = UIFont.boldSystemFont(ofSize: 14)

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
