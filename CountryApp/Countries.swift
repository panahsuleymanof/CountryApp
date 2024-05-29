//
//  Countries.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 13.04.24.
//

import Foundation
struct Countries {
    let name: String
    let flag: String
    let cities: [Cities]
}

struct Cities {
    let name: String
    let logo: String
    let info: String
}
