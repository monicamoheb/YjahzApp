//
//  PopularCollectionViewCell.swift
//  YjahzApp
//
//  Created by Mac on 19/12/2023.
//

import UIKit
import Cosmos

class PopularCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var popularNameTF: UILabel!
    @IBOutlet weak var popularDistanceTF: UILabel!
    @IBOutlet weak var popularRatingBar: CosmosView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var popularImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
