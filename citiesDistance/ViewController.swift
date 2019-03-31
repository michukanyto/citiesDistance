//
//  ViewController.swift
//  citiesDistance
//
//  Created by Marlon Escobar on 2019-03-31.
//  Copyright © 2019 Marlon Escobar A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldFrom: UITextField!
    @IBOutlet weak var textFieldTo: UITextField!
    @IBOutlet weak var textFieldDistance: UITextField!
    @IBOutlet weak var buttonSave: UIButton!
    
    struct distance{
        var from = ""
        var to = ""
        var distance = 0.00
    }
    
    var distances:[distance] = [distance]()
    var newDistance:distance = distance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSave(_ sender: UIButton) {
        newDistance.from = textFieldFrom.text!
        newDistance.to = textFieldTo.text!
        newDistance.distance = Double(textFieldDistance.text!)!
        
        distances.append(newDistance)
        cleanNewDistance()
        print(distances)
    }
    
    func cleanNewDistance(){
        newDistance.from = ""
        newDistance.to = ""
        newDistance.distance = 0.00
        textFieldFrom.text = ""
        textFieldTo.text = ""
        textFieldDistance.text = ""
        
    }
}

