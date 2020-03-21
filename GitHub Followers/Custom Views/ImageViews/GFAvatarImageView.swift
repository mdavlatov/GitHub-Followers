//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Mehrob Davlatov on 3/19/20.
//  Copyright © 2020 Mehrob Davlatov. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeHolderImage = Images.placeholderImage

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func downloadImage(fromURL url: String) {
        NetworkManager.shared.downloadImage(from: url) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}
