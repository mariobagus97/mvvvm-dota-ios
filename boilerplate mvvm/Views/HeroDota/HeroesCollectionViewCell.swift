//
//  HeroesCollectionViewCell.swift
//  boilerplate mvvm
//
//  Created by MacbookUltravoucher on 13/10/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import UIKit

class HeroesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgHero: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.imgHero.layer.cornerRadius = 5
    }
}
