//
//  NewsTableViewCell.swift
//  Mai Duyên
//
//  Created by vMio on 5/29/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var photo1: UIImageView!
    @IBOutlet weak var nameBT: UIButton!
    @IBOutlet weak var timeBT: UILabel!
    @IBOutlet weak var photo2: UIImageView!
    @IBOutlet weak var overView: UILabel!
    @IBOutlet weak var status: UIButton!
    @IBOutlet weak var moreBT: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        photo1.layer.cornerRadius = photo1.frame.width/2
        photo1.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func actionBt(_ sender: UIButton) {
    }
    @IBAction func statusBt(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    @IBAction func more(_ sender: UIButton) {
    }
}
