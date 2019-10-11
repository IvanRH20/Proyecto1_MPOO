//
//  BoletViewController.swift
//  COLLECTION
//
//  Created by 2020-1 on 10/10/19.
//  Copyright © 2019 ioslabv. All rights reserved.
//

import UIKit

class BoletViewController: UIViewController {
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    @IBOutlet weak var textfield3: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: AnyObject) {
       
        var one = Int(textfield1.text!)!
        
        var two = Int(textfield2.text!)!
        var  treh = Int(textfield3.text!)!

        
  
        
       
        
        let valor = 38*(one)+40*(two)+32*(treh)
        
        label.text = "El costo total es de: \(String(valor))"
        
        
    }
    
    @IBAction func atras(_ sender: Any) {
        dismiss (animated: true, completion: nil)
    }

}
