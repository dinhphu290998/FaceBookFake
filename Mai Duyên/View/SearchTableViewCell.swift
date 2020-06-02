//
//  SearchTableViewCell.swift
//  Mai Duyên
//
//  Created by vMio on 6/13/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var acceptButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var photo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        photo.layer.cornerRadius = photo.frame.width/2
        photo.layer.masksToBounds = true
        deleteButton.layer.cornerRadius = 10
        confirmButton.layer.cornerRadius = 10
        acceptButton.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func confirm(_ sender: UIButton) {
        confirmButton.isHidden = true
        acceptButton.isHidden = false
    }
    
}
