//
//  ViewController.swift
//  uiTableViewProject
//
//  Created by Rahul Heerekar on 26/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Define your data source
    let data = ["Item 1", "Item 2", "Item 3"]
    
    // Declare a table view
    var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        tableView = UITableView(frame: view.bounds, style: .plain)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Register custom cells if needed
        // tableView.register(CustomCellClass.self, forCellReuseIdentifier: "CustomCellIdentifier")
        
        view.addSubview(tableView)
        
        // Do any additional setup after loading the view.
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier") ?? UITableViewCell(style: .default, reuseIdentifier: "CellIdentifier")
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row: \(indexPath.row)")
    }

    
}

