//
//  GenTextField.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class GenTextField: UITextField {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(placeholdr: String, bgClr: UIColor, txtClr: UIColor, cornrRadius: CGFloat) {
        super.init(frame: .zero)
        placeholder = placeholdr
        backgroundColor = bgClr
        textColor = txtClr
        layer.cornerRadius = cornrRadius
    }
    
    private func configureUI() {
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        leftViewMode = .always
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
