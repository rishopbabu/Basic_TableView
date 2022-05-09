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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .black
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
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.heightAnchor.constraint(equalTo: view.heightAnchor)
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
        return cell ?? UITableViewCell()
    }
}

