//
//  fifthViewController.swift
//  uiTableViewProject
//
//  Created by Rahul Heerekar on 14/07/24.
//

import UIKit

class fifthViewController: UIViewController {
    @IBOutlet weak var whatsAppTableView: UITableView!
    @IBOutlet weak var anotherWhatsAppTableView: UITableView!
    var names = ["Rajesh","Aman","sonu","raju"]
    
    var photos = [UIImage(named: "evening"), UIImage(named: "Image"), UIImage(named: "morning"), UIImage(named: "night")]
    var messages = ["good morningfgwuyegfuywgfuygfweuyfgufgwuyfguwyfguyfueygfuyguyfgeruyfgeuygeuygreygeuyehgeurghuygheuyrguy","good evening sir","good night sir","entire universe "]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        whatsAppTableView.dataSource = self
        whatsAppTableView.delegate = self
        whatsAppTableView.register(UINib(nibName: "FifthTableViewCell", bundle: nil), forCellReuseIdentifier: "whatsAppCell")
        anotherWhatsAppTableView.register(UINib(nibName: "FifthTableViewCell", bundle: nil), forCellReuseIdentifier: "whatsAppCell")
        
    }
    

    

}

extension fifthViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let whatsAppCell = tableView.dequeueReusableCell(withIdentifier: "whatsAppCell", for: indexPath) as! FifthTableViewCell
        whatsAppCell.whatAppNameLabel.text = names[indexPath.row]
        whatsAppCell.whatAppDisplay.image = photos[indexPath.row]
        whatsAppCell.whatsAppMessageLabel.text = messages[indexPath.row]
       
        
        return whatsAppCell
    }
    
    
}
