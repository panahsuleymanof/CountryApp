//
//  CityController.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 14.04.24.
//

import UIKit

class CityController: UIViewController {
    
    var countryCities: [Cities] = []

    @IBOutlet weak var cityTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cities"
        cityTableView.dataSource = self
        cityTableView.delegate = self
    }

}

extension CityController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countryCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as! CityTableViewCell
        cell.cityName.text = countryCities[indexPath.row].name
        cell.cityImage.image = UIImage(named: countryCities[indexPath.row].logo)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controlller = storyboard?.instantiateViewController(identifier: "InfoController") as! InfoController
        controlller.cityName = countryCities[indexPath.row].name
        controlller.cityLogo = countryCities[indexPath.row].logo
        controlller.cityInfo = countryCities[indexPath.row].info
        navigationController?.show(controlller, sender: nil)
    }
}

extension CityController: UITableViewDelegate{
    //
}
