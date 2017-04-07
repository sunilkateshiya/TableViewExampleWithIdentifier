//
//  CarDetailViewController.swift
//  TableView2
//
//  Created by iFlame on 07/04/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var labelCarName: UILabel!
    @IBOutlet var buttonSelectCarName: UIButton!
    @IBOutlet var textFieldCost: UITextField!
    @IBOutlet var textViewDescription: UITextView!
    
    @IBOutlet var pickerSelectCarName: UIPickerView!
    
    var carNames : [String] = ["lamborghini",",mershdies","BMW","audi"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUserInterface()
    }

    func setUpUserInterface(){
        pickerSelectCarName.delegate = self
        pickerSelectCarName.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonSavePressed(_ sender: Any) {
        
    }
    
}

extension CarDetailViewController {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return carNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return carNames.count
    }



}

