//
//  PlacesPresenter.swift
//  Places
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

protocol PlacesPresenter: class {
    var placeController: PlaceController? {get set}  // must have a places controller var 
}
