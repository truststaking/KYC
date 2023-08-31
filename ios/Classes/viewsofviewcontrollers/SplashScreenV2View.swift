//
//  SplashScreenV2View.swift
//  testing
//
//  Created by Viktas Juskys on 2020-12-03.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import idenfycore
import iDenfySDK
import idenfyviews
import Lottie

@objc open class SplashScreenV2View: UIView, SplashScreenV2Viewable {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }

    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var idenfyLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isOpaque = true
        imageView.image = UIImage(named: "xoxno_logo", in: Bundle.main, compatibleWith: nil)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    var loadingSpinner: LottieAnimationView = {
        let lottieView = LottieAnimationView(frame: .zero)
        lottieView.translatesAutoresizingMaskIntoConstraints = false
        lottieView.animation = LottieAnimation.filepath(Bundle(identifier: "com.idenfy.idenfyviews")!.path(forResource: "idenfy_custom_animation_splash_screen_loading_indicator", ofType: "json")!)
        lottieView.contentMode = .scaleAspectFit
        lottieView.play()
        lottieView.loopMode = .loop
        lottieView.backgroundBehavior = .pauseAndRestore
        return lottieView
    }()

    public var splashScreenTitle: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = IdenfySplashScreenViewUISettingsV2.idenfySplashScreenViewDescriptionTextColor
        label.numberOfLines = 0
        label.font = IdenfySplashScreenViewUISettingsV2.idenfySplashScreenViewDescriptionFont
        label.textAlignment = .center
        return label
    }()

    open func setupConstraints() {
        backgroundColor = UIColor(hexString: "#121212")
        setupViews()
    }

    @objc open func setupViews() {
        addSubview(idenfyLogo)
        let size = UIScreen.main.bounds.size
        let spinnerSize = size.height / 1.62
        let logoY = -(size.height / 8)
        let titleY = size.height / 5
        idenfyLogo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        idenfyLogo.centerYAnchor.constraint(equalTo: centerYAnchor, constant: logoY).isActive = true
        idenfyLogo.heightAnchor.constraint(equalToConstant: 24).isActive = true
        addSubview(splashScreenTitle)
        splashScreenTitle.topAnchor.constraint(equalTo: idenfyLogo.bottomAnchor, constant: titleY).isActive = true
        splashScreenTitle.widthAnchor.constraint(equalToConstant: size.width * 0.8).isActive = true
        splashScreenTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        addSubview(loadingSpinner)
        loadingSpinner.centerYAnchor.constraint(equalTo: centerYAnchor, constant: logoY).isActive = true
        loadingSpinner.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        loadingSpinner.widthAnchor.constraint(equalToConstant: spinnerSize).isActive = true
        loadingSpinner.heightAnchor.constraint(equalToConstant: spinnerSize).isActive = true
    }
}

