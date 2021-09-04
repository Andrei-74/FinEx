//
//  FinexTableViewCell.swift
//  FinEx
//
//  Created by Андрей Костицин on 01.09.2021.
//

import UIKit

class FinexTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var summLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(object: Finex) {
        self.nameLabel.text = object.name
        self.countLabel.text = object.count
        self.summLabel.text = object.summ
    }

}
