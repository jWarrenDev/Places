//
//  PlaceController.swift
//  Places
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class PlaceController{
    
   
    
    func createPlace(with name:String, latitude: Double, longitude: Double) {
        let place = Place(name: name, latitude: latitude, longitude: longitude)
        places.append(place)
    }
    
    private(set) var places: [Place] = []
    
}
