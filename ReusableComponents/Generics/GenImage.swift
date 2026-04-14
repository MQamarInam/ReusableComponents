//
//  GenImage.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class GenImage: UIImageView {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(imageName: String, contntMode: UIView.ContentMode, tintClr: UIColor, cornrRadius: CGFloat) {
        super.init(frame: .zero)
        contentMode = contntMode
        tintColor = tintClr
        layer.cornerRadius = cornrRadius
        image = UIImage(systemName: imageName)
        configureUI()
    }
    
    func configureUI() {
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }

}
