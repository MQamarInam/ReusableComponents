//
//  CollectionCell.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    private let myImage = GenImage(imageName: "clock", contntMode: .left, tintClr: .gray, cornrRadius: 10)
    private let myTitle = GenLabel(
        myfont: .systemFont(ofSize: 18, weight: .semibold),
        color: .black,
        mytext: "Title",
        myNumberOfLines: 0,
        clickable: false,
        txtAlignment: .left
    )
    
    static let identifier = "cellIdentifier"
    
    private func setupUI() {
        contentView.addSubview(myImage)
        contentView.addSubview(myTitle)
        contentView.backgroundColor = .gray.withAlphaComponent(0.3)
        contentView.layer.cornerRadius = 10
        
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            myImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            myImage.heightAnchor.constraint(equalToConstant: 120),
            
            myTitle.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 5),
            myTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            myTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
        ])
    }
    
    public func customCell(image: String, title: String) {
        self.myImage.setImage(from: image)
        self.myTitle.text = title
        self.setupUI()
    }
    
}
