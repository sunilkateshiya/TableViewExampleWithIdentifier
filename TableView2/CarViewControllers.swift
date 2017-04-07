//
//  CarViewControllersTableViewController.swift
//  TableView2
//
//  Created by iFlame on 06/04/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class CarViewControllers: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //@IBOutlet var tableView1: UITableView!
    
    var tableView1 : UITableView!
    var cars : [String]!

    override func viewDidLoad(){
    super.viewDidLoad()

        cars = ["Lamborghini","Mercedes","Skoda","BMW","Audi"]
 
        tableView1 = UITableView(frame: self.view.frame, style: UITableViewStyle.plain)
        tableView1.dataSource = self
        tableView1.delegate = self
        self.view.addSubview(tableView1)
        tableView1.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        tableView1.reloadData()
    
}
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
}
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
}
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        }
        cell!.textLabel?.text=cars[indexPath.row]
        cell!.accessoryType = .checkmark
        cell!.imageView?.image = UIImage.init(named: cars[indexPath.row])
        return cell!
        
}
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt ==>>\(indexPath)")
        
    }

}

       
