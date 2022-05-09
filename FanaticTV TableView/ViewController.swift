//
//  ViewController.swift
//  FanaticTV TableView
//
//  Created by MAC-OBS-26 on 06/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private weak var tableView: UITableView!
    
    private weak var headingLabel: UILabel!
    
    private weak var addVideoButton: UIButton!
    
    private weak var addLiveButton: UIButton!
    
    private weak var middleLabel: UILabel!
    
    private weak var saveButton: UIButton!
    
    
    
    let labelHeadings: [String] = ["Show Name", "Select Start Date", "Select Start Time"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.title = "Hello"
        //view.backgroundColor = .white
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    private func setupTableView() -> UITableView {
        let tableView = UITableView.init(frame: CGRect.zero, style: .plain)
        tableView.backgroundColor = .clear
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }
    
    private func setupViews() {
        let tableViewItem = setupTableView()
        tableViewItem.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        tableViewItem.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.tableView = tableViewItem
        view.addSubview(tableView)
        
        
        let addVideoButtonItem = UIButton()
        addVideoButtonItem.translatesAutoresizingMaskIntoConstraints = false
        addVideoButtonItem.backgroundColor = .red
        addVideoButtonItem.setTitle("Add Video", for: .normal)
        addVideoButtonItem.titleLabel?.font = UIFont.semibold_hellix(17)
        addVideoButtonItem.layer.cornerRadius = 40/2
        self.addVideoButton = addVideoButtonItem
        view.addSubview(addVideoButtonItem)
                
        let addLiveButtonItem = UIButton()
        addLiveButtonItem.translatesAutoresizingMaskIntoConstraints = false
        addLiveButtonItem.backgroundColor = .lightGray
        addLiveButtonItem.setTitle("Add Live", for: .normal)
        addLiveButtonItem.titleLabel?.font = UIFont.semibold_hellix(17)
        addLiveButtonItem.layer.borderWidth = 2
        addLiveButtonItem.layer.borderColor = UIColor.red.cgColor
        addLiveButtonItem.layer.cornerRadius = 40/2
        self.addLiveButton = addLiveButtonItem
        view.addSubview(addLiveButtonItem)
        
//        let buttonBorder = CAShapeLayer()
//        buttonBorder.strokeColor = UIColor.red.cgColor
//        buttonBorder.lineDashPattern = [2, 2]
//        buttonBorder.frame = addLiveButton?.bounds
//        buttonBorder.fillColor = nil
//        buttonBorder.path = UIBezierPath(rect: addLiveButton.bounds).cgPath
//        addLiveButton.layer.addSublayer(buttonBorder)
        
        let middleLabelItem = UILabel()
        middleLabelItem.translatesAutoresizingMaskIntoConstraints = false
        middleLabelItem.text = "\"Keep it Classy or Get Banned\""
        middleLabelItem.textColor = .white
        middleLabelItem.font = UIFont.semibold_hellix(16)
        self.middleLabel = middleLabelItem
        view.addSubview(middleLabelItem)
        
        let saveButtonItem = UIButton()
        saveButtonItem.translatesAutoresizingMaskIntoConstraints = false
        saveButtonItem.backgroundColor = .red
        saveButtonItem.setTitle("Save", for: .normal)
        saveButtonItem.titleLabel?.font = UIFont.semibold_hellix(17)
        saveButtonItem.layer.cornerRadius = 50/2
        self.saveButton = saveButtonItem
        view.addSubview(saveButtonItem)
        
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.heightAnchor.constraint(equalTo: view.heightAnchor),
            
            addVideoButton.topAnchor.constraint(equalTo: tableView.topAnchor, constant: 250),
            addVideoButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            addVideoButton.heightAnchor.constraint(equalToConstant: 40),
            addVideoButton.widthAnchor.constraint(equalToConstant: 160),
            
            addLiveButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            addLiveButton.rightAnchor.constraint(equalTo: addVideoButton.rightAnchor, constant: 175),
            addLiveButton.heightAnchor.constraint(equalToConstant: 40),
            addLiveButton.widthAnchor.constraint(equalToConstant: 160),
            
            middleLabel.topAnchor.constraint(equalTo: addLiveButton.topAnchor, constant: 50),
            middleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            middleLabel.heightAnchor.constraint(equalToConstant: 25),
            //middleLabel.widthAnchor.constraint(equalToConstant: 400),
            
            saveButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
            saveButton.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell
        cell?.label1.text = labelHeadings[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
}

