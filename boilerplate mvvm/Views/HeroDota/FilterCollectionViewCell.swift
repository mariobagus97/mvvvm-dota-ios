//
//  FilterCollectionViewCell.swift
//  boilerplate mvvm
//
//  Created by MacbookUltravoucher on 13/10/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewFrame: UIView!
    @IBOutlet weak var lblRoleName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        setup()
        self.viewFrame.layer.cornerRadius = 20
    }
   
    
}
