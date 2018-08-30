//
//  Place.swift
//  Places
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

struct Place {
    let name: String
    let location: (latitude: Double, longitude: Double)
    
    init(name: String, latitude: Double, longitude: Double){
        self.name = name
        self.location = (latitude: latitude, longitude: longitude)
    }
}
