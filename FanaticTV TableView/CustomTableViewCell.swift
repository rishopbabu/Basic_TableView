//
//  CustomTableViewCell.swift
//  FanaticTV TableView
//
//  Created by MAC-OBS-26 on 09/05/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private weak var label1: UILabel!
    
    private weak var textField1: UITextField!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.backgroundColor = .black
        
        setupViews()
    }
    
    private func setupViews() {
        
        let label1Item = UILabel()
        label1Item.translatesAutoresizingMaskIntoConstraints = false
        label1Item.textColor = .white
        label1Item.text = "Show Name"
        label1Item.font = UIFont.medium_hellix(14)
        self.label1 = label1Item
        contentView.addSubview(label1Item)
        
        let textField1Item = UITextField()
        textField1Item.translatesAutoresizingMaskIntoConstraints = false
        textField1Item.textColor = .white
        textField1Item.text = "Your Name"
        textField1Item.font = UIFont.medium_hellix(14)
        self.textField1 = textField1Item
        contentView.addSubview(textField1Item)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            label1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            label1.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 20),
            label1.heightAnchor.constraint(equalToConstant: 25),
            
            textField1.topAnchor.constraint(equalTo: label1.topAnchor, constant: 20),
            textField1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            textField1.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 20),
            textField1.heightAnchor.constraint(equalToConstant: 25)
            //textField1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 10)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
