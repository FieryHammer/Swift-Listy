//
//  ListTableViewController.swift
//  Listy
//
//  Created by Horvath, Mate on 2018. 10. 15..
//  Copyright © 2018. Finastra. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell") as? ParallaxCell else { return UITableViewCell() }
        
        cell.configureWith(withImage: imageArray[indexPath.row], title: nameArray[indexPath.row])
        
        return cell
    }

}

