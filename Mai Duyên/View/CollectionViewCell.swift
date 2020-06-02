//
//  CollectionViewCell.swift
//  Mai Duyên
//
//  Created by vMio on 5/29/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var photo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        photo.layer.cornerRadius = photo.frame.width/2
        photo.layer.masksToBounds = true
    }

}
