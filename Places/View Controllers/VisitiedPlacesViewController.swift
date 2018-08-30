//
//  VisitiedPlacesViewController.swift
//  Places
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class VisitiedPlacesViewController: UIViewController, PlacesPresenter, PlaceSelectionDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func placeWasSelected(place:Place) {
        mapViewController?.location = place.location
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlacesTable" {
            guard let placesTVC  = segue.destination as? PlacesTableViewController else {return}
            
            placesTVC.placeController = placeController
            placesTableViewController = placesTVC
            
            placesTVC.delegate = self
            
        } else if segue.identifier == "MapView" {
            
            guard let mapVC = segue.destination as? MapViewController else {return}
            
            mapViewController = mapVC
        }
    }
    
    var mapViewController: MapViewController?
    var placesTableViewController: PlacesTableViewController?

    var placeController: PlaceController?
    
}
