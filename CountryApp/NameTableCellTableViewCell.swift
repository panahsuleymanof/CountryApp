//
//  CountryNameTableCellTableViewCell.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 13.04.24.
//

import UIKit

class NameTableCellTableViewCell: UITableViewCell {
    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
