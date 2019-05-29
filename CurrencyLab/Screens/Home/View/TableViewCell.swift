//
//  TableViewCell.swift
//  CurrencyLab
//
//  Created by Salma on 5/27/19.
//  Copyright © 2019 AyaAndSalma. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var currencyOutlet: UILabel!
    @IBOutlet weak var countryOutlet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
