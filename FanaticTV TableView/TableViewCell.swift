//
//  TableViewCell.swift
//  FanaticTV TableView
//
//  Created by MAC-OBS-26 on 06/05/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier = "TableViewCell"
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Show Name"
        label.font = UIFont.medium_hellix(14)
        return label
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.text = "User Name"
        textField.font = UIFont.medium_hellix(13)
        return textField
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        contentView.addSubview(nameLabel)
        contentView.addSubview(nameTextField)
        
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func layoutSubviews() {
//        nameLabel.frame = CGRect(x: 5, y: 5, width: 100, height: contentView.frame.size.height)
//        nameTextField.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
//    }
}
