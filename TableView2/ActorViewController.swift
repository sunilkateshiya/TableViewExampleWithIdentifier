//
//  ActorViewController.swift
//  TableView2
//
//  Created by iFlame. on 28/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ActorViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    var actors : [String]!
    
    override func viewDidLoad() {
        actors = ["aamir","ajay","amitabh","anil","hrithik","salman","shahrukh","varun"]
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
    
        
         if cell == nil{
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        }
        cell.textLabel?.text = actors[indexPath.row] //"\(indexPath.section) -- \(indexPath.row)"
        cell.accessoryType = .checkmark
        
        cell.imageView?.image = UIImage.init(named: actors[indexPath.row])
        
   return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt ==>> \(indexPath)")
        
    }
    
}
  
