//
//  fourthTableViewCell.swift
//  uiTableViewProject
//
//  Created by Rahul Heerekar on 14/07/24.
//

import UIKit

class fourthTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoImageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        photoImageview.layer.borderWidth = 20

        photoImageview.layer.cornerRadius = photoImageview.bounds.height / 2
           photoImageview.clipsToBounds = true
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
