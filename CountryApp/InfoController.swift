//
//  InfoController.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 17.04.24.
//

import UIKit

class InfoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var cityName = ""
    var cityLogo = ""
    var cityInfo = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        title = cityName
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath) as! InfoCell
        
        cell.cityView.image = UIImage(named: cityLogo)
        cell.infoLabel.text = cityInfo
        return cell
        
    }
    
}
