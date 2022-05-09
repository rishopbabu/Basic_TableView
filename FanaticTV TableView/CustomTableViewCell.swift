//
//  CustomTableViewCell.swift
//  FanaticTV TableView
//
//  Created by MAC-OBS-26 on 09/05/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    public weak var label1: UILabel!
    
    private weak var textView1: UITextView!
    
    private weak var datePicker: UIDatePicker!
    
    let labelHeadings: [String] = ["Show Name", "Select Start Date", "Select Start Time"]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        setupViews()
    }
    
    public func setupViews() {
        
        let label1Item = UILabel()
        label1Item.translatesAutoresizingMaskIntoConstraints = false
        label1Item.textColor = .white
        //label1Item.text = "Show Name"
        label1Item.font = UIFont.medium_hellix(14)
        self.label1 = label1Item
        contentView.addSubview(label1Item)
        
        let textView1Item = UITextView()
        textView1Item.translatesAutoresizingMaskIntoConstraints = false
        textView1Item.backgroundColor = .clear
        textView1Item.textColor = .white
        textView1Item.text = "Your Name"
        textView1Item.font = UIFont.medium_hellix(14)
        self.textView1 = textView1Item
        contentView.addSubview(textView1Item)
        
//        let datePickerItem = UIDatePicker()
//        datePickerItem.translatesAutoresizingMaskIntoConstraints = false
//        datePickerItem.backgroundColor = .clear
//        datePickerItem.datePickerMode = .dateAndTime
//        self.datePicker = datePickerItem
//        contentView.addSubview(datePickerItem)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            label1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            label1.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 20),
            label1.heightAnchor.constraint(equalToConstant: 25),
            
            textView1.topAnchor.constraint(equalTo: label1.topAnchor, constant: 20),
            textView1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            textView1.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 20),
            textView1.heightAnchor.constraint(equalToConstant: 25)
            
            
//            datePicker.topAnchor.constraint(equalTo: label1.topAnchor, constant: 20),
//            datePicker.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
//            datePicker.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 20),
//            datePicker.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
