//
//  NotificationTableViewCell.swift
//  Mai Duyên
//
//  Created by vMio on 6/13/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var photo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        photo.layer.cornerRadius = photo.frame.width/2
        photo.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
