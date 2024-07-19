//
//  FifthTableViewCell.swift
//  uiTableViewProject
//
//  Created by Rahul Heerekar on 14/07/24.
//

import UIKit

class FifthTableViewCell: UITableViewCell {

    @IBOutlet weak var whatAppDisplay: UIImageView!
    
    @IBOutlet weak var whatAppNameLabel: UILabel!
    
    @IBOutlet weak var whatsAppMessageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        // Configure the view for the selected state
    }
    
}
