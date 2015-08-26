//
//  RulesViewController.swift
//  MiniChallange2
//
//  Created by Lucas Gabriel Silvério de Freitas on 21/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class RulesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var type = String()
    var sport = String()
    var arrayOfData = [String]()
    
    var photoName = ""
    
    override func viewDidLoad() {
        if photoName == "badminton.png" {
            sport = "Badminton"
        }else if photoName == "tchoukball.png" {
            sport = "Tchoukball"
        }

        type = "Rules"
        arrayOfData = AccessJSON.acessArray(self.sport, type: self.type)
        println(self.arrayOfData)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayOfData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : RulesTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! RulesTableViewCell
        
        println(arrayOfData[indexPath.row])
        cell.labelText.text = arrayOfData[indexPath.row]
        return cell
    }
}
