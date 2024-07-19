//
//  fourthViewController.swift
//  uiTableViewProject
//
//  Created by Rahul Heerekar on 14/07/24.
//

import UIKit

class fourthViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    
    var names = ["Rahul","Akash hbweiughuihguigrhiurhgiuwerhgrihgiwrghwiurghrwighriwuhgiuhgierhgiuhgiurehgiuehgiuhegrihgi","Adithya","sonu"]
    
    var photos = [UIImage(named: "evening"), UIImage(named: "Image"), UIImage(named: "morning"), UIImage(named: "night")]
    var messages = ["good morningfgwuyegfuywgfuygfweuyfgufgwuyfguwyfguyfueygfuyguyfgeruyfgeuygeuygreygeuyehgeurghuygheuyrguy","good evening sir","good night sir","entire universe "]

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        
     //  photoImageview.layer.borderWidth = 2
        // Do any additional setup after loading the view.
    }


}
extension fourthViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as? fourthTableViewCell
        cell?.nameLabel.text = names[indexPath.row]
        cell?.photoImageview.image = photos[indexPath.row]
        cell?.messageLabel.text = messages[indexPath.row]
        return cell!

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}

