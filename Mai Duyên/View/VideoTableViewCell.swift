//
//  VideoTableViewCell.swift
//  Mai Duyên
//
//  Created by vMio on 6/13/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
class VideoTableViewCell: UITableViewCell {
    @IBOutlet weak var aView: UIView!
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
    @IBAction func statusBt(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    @IBAction func playVideo(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}
