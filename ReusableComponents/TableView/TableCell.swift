//
//  TableCell.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class TableCell: UITableViewCell {

    static let identifier = "myIdentifier"
        
    private let myImage = GenImage(imageName: "clock", contntMode: .left, tintClr: .gray, cornrRadius: 10)
    private let myTitle = GenLabel(
        myfont: .systemFont(ofSize: 18, weight: .semibold),
        color: .black,
        mytext: "Title",
        myNumberOfLines: 0,
        clickable: false,
        txtAlignment: .left
    )
    private let myDesc = GenLabel(
        myfont: .systemFont(ofSize: 16, weight: .medium),
        color: .gray,
        mytext: "Description",
        myNumberOfLines: 2,
        clickable: true,
        txtAlignment: .left
    )
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        
        contentView.addSubview(myImage)
        contentView.addSubview(myTitle)
        contentView.addSubview(myDesc)
        
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            myImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            myImage.widthAnchor.constraint(equalToConstant: 80),
            myImage.heightAnchor.constraint(equalToConstant: 80),
            
            myTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7),
            myTitle.bottomAnchor.constraint(equalTo: myDesc.topAnchor),
            myTitle.leadingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 12),
            myTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            
            myDesc.topAnchor.constraint(equalTo: myTitle.bottomAnchor),
            myDesc.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -7),
            myDesc.leadingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 12),
            myDesc.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
        ])
    }
    
    public func setupCell(title: String, desc: String, imageUrl: String) {
        myImage.setImage(from: imageUrl)
        myImage.image =  UIImage(named: "clock")
        myTitle.text = title
        myDesc.text = desc
    }
    
}
