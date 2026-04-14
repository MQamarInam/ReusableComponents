//
//  GenButton.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class GenButton: UIButton {

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(bgColor: UIColor, title: String, labelFont: UIFont, cornrRadius: CGFloat) {
        super.init(frame: .zero)
        backgroundColor = bgColor
        titleLabel?.font = labelFont
        layer.cornerRadius = cornrRadius
        setTitle(title, for: .normal)
        configureUI()
    }
    
    func configureUI() {
        translatesAutoresizingMaskIntoConstraints = false
    }

}
