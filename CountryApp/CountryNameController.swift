//
//  CountryNameController.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 13.04.24.
//

import UIKit

class CountryNameController: UIViewController {
    var country = [Countries]()
    let manager = CountryManager()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        title = "Countries"
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        country = manager.manage()
    }
    
}

extension CountryNameController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        country.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableCellTableViewCell", for: indexPath) as! NameTableCellTableViewCell
        
        cell.titleLabel.text = country[indexPath.row].name
        cell.itemImage.image = UIImage(named: country[indexPath.row].flag)
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "CityController") as! CityController
        controller.countryCities = country[indexPath.row].cities
        navigationController?.show(controller, sender: nil)
    }
}

extension CountryNameController: UITableViewDelegate{
    //
}
