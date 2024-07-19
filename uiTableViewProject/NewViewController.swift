//
//  NewViewController.swift
//  uiTableViewProject
//
//  Created by Rahul Heerekar on 08/07/24.
//

import UIKit

class NewViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var newTableView: UITableView!
    
        // Define your UITableView instance
        var tableView: UITableView!

        // Sample data for sections
        var sectionAData = ["Item A1", "Item A2", "Item A3"]
        var sectionBData = ["Item B1", "Item B2","Item B3"]

        override func viewDidLoad() {
            super.viewDidLoad()

            // Initialize and configure UITableView
            tableView = UITableView(frame: view.bounds, style: .grouped)
            tableView.dataSource = self
            tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            tableView.headerView(forSection: 1)
        
            

            // Register UITableViewCell class if needed
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

            // Add UITableView to the view hierarchy
            view.addSubview(tableView)
            tableView.delegate = self
        }
    }

    // MARK: - UITableViewDataSource
extension NewViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2 // Two sections: Section A and Section B
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return sectionAData.count // Number of rows in Section A
        case 1:
            return sectionBData.count // Number of rows in Section B
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure cell text based on section and row
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = sectionAData[indexPath.row] // Items for Section A
        case 1:
            cell.textLabel?.text = sectionBData[indexPath.row] // Items for Section B
        default:
            break
        }
        
        return cell
    }
    
//        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            switch section {
//            case 0:
//                return "Section A" // Header title for Section A
//            case 1:
//                return "Section B" // Header title for Section B
//            default:
//                return nil
//            }
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = (section == 0) ? UIColor.red : UIColor.blue // Different colors for Section A and Section B headers
        
        let titleLabel = UILabel(frame: CGRect(x: 15, y: 5, width: tableView.frame.width - 30, height: 30))
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        titleLabel.textColor = UIColor.white
        titleLabel.text = (section == 0) ? "Section A" : "Section B" // Header title
        
        headerView.addSubview(titleLabel)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
        
        // Adjust the height of the header view as needed
    }

    
//    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        
//        // This changes the header background
//        view.tintColor = UIColor.red
//        view.backgroundColor = UIColor.red
//        
//    }
    
}
