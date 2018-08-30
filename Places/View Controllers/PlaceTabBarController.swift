//
//  PlaceTabBarController.swift
//  Places
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class PlaceTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Pass the place controller to the child view controllers (the relationship view controllers)
        
        for childVC in childViewControllers {
            // if the child view controller conforms to PlacesPresenter, we KNOW there is a places controller property that we can pass the palces controller to.
            
            if let childVC = childVC as? PlacesPresenter {
                childVC.placeController = placeController
            }
        }
        
    }

    let placeController = PlaceController()
   
}
