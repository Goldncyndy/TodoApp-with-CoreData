//
//  TodoViewController.swift
//  TodoAPP
//
//  Created by Decagon on 15/09/2021.
//
import UIKit
class TodoViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    lazy var todoTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(todoTableView)
        setupTableViewConstraint()
        todoTableView.register(TodoTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    func setupTableViewConstraint() {
        todoTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        todoTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        todoTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        todoTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension TodoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        return cell
    }
}
