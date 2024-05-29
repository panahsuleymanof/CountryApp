//
//  InfoCell.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 17.04.24.
//

import UIKit

class InfoCell: UITableViewCell {

    
    @IBOutlet weak var cityView: UIImageView!
    
    @IBOutlet weak var infoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
