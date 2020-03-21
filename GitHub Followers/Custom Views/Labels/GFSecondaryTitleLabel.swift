//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Mehrob Davlatov on 3/19/20.
//  Copyright © 2020 Mehrob Davlatov. All rights reserved.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }
    
    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.95
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    } 
}
