//
//  SmallTableCell.swift
//  TapStore
//
//  Created by SofiaBuslavskaya on 27/05/2020.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import UIKit

class SmallTableCell: UICollectionViewCell, SelfConfiguringCell {
    
    //MARK: - Properties
    static var reuseIdentifier: String = "SmallTableCell"
    
    let name = UILabel()
    let imageView = UIImageView()
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        name.font = UIFont.preferredFont(forTextStyle: .title2)
        name.textColor = .label
        
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        
        let stackView = UIStackView(arrangedSubviews: [imageView, name])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.spacing = 20
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func configure(with app: App) {
        name.text = app.name
        imageView.image = UIImage(named: app.image)
    }
    
    
}
