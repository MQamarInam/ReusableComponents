//
//  GenLabel.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class GenLabel: UILabel {

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(myfont: UIFont, color: UIColor, mytext: String, myNumberOfLines: Int, clickable: Bool, txtAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        font = myfont
        textColor = color
        numberOfLines = myNumberOfLines
        text = mytext
        textAlignment = txtAlignment
        isUserInteractionEnabled = clickable
        configureUI()
    }
    
    func configureUI() {
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }

}
