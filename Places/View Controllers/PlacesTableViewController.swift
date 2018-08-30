//
//  PlacesTableViewController.swift
//  Places
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

protocol PlaceSelectionDelegate: class {
    func placeWasSelected(place: Place)
}

class PlacesTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView : UITableView, didSelectRowAt indexPath: IndexPath){
        guard let place = placeController?.places[indexPath.row] else {return}
        
        delegate?.placeWasSelected(place: place)
    
        
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeController?.places.count ?? 0 // Don't have to unwrap place controller
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

        let place = placeController?.places[indexPath.row]
        
        cell.textLabel?.text = place?.name
        
        return cell
    }
    
    weak var delegate: PlaceSelectionDelegate?

    // Catcher's mitt
    var placeController: PlaceController?
    
    
    
}
