//
//  CityTableViewCell.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 14.04.24.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
