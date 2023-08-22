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

@objc open class SplashScreenV2View: UIView, SplashScreenV2Viewable {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
        backgroundColor = UIColor(hexString:"#AEFB4F")
    }

    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var splashScreenTitle: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(hexString: "#121212")
        label.numberOfLines = 0
        label.font = UIFont(name: "HKGrotesk-Regular", size: 13)
        label.textAlignment = .center
        return label
    }()

    open func setupConstraints() {
        setupViews()
    }

    @objc open func setupViews() {
        addSubview(splashScreenTitle)
        splashScreenTitle.topAnchor.constraint(equalTo: topAnchor).isActive = true
        splashScreenTitle.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        splashScreenTitle.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        splashScreenTitle.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
}
