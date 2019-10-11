//
//  SecondViewController.swift
//  COLLECTION
//
//  Created by 2020-1 on 9/23/19.
//  Copyright © 2019 ioslabv. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var pico: UIPickerView!
    
    var datos = [["12:00","13:30","15:00","17:00","19:20","21:10","23:40"]
                 ]
    var escuela: String = ""
    var valor: String = ""

   
    
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        pico.dataSource = self
        pico.delegate = self
        escuela = datos[0][0]
        
        
        
        
    }
  
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return datos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datos[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return datos[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
      
        if component == 0 {
            escuela = datos[0][row]
            
        }else{
            valor = datos[1][row]
        }
        print("\(valor) boletos tipo \(escuela)")
    
       
    }
    
    @IBAction func atras(_ sender: Any) {
        dismiss (animated: true, completion: nil)
    }
    
    
    
    
    
}
