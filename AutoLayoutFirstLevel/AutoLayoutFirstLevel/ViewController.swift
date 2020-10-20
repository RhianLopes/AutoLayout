//
//  ViewController.swift
//  AutoLayoutFirstLevel
//
//  Created by Rhian Lopes da Costa on 19/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quantityField: UITextField!
    @IBOutlet weak var sizeField: UITextField!
    
    let quantity = [1, 2, 3, 4, 5]
    let size = ["Small", "Medium", "Large", "Giant"]
    
    var quantityPickerView = UIPickerView()
    var sizePickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        quantityPickerView.delegate = self
        quantityPickerView.dataSource = self
        
        sizePickerView.delegate = self
        sizePickerView.dataSource = self
        
        quantityField.inputView = quantityPickerView
        
        sizeField.inputView = sizePickerView
        
        quantityPickerView.tag = 1
        sizePickerView.tag = 2
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return quantity.count
        } else {
            return size.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return String(quantity[row])
        } else {
            return String(size[row])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            quantityField.text = String(quantity[row])
            quantityField.resignFirstResponder()
        } else {
            sizeField.text = String(size[row])
            sizeField.resignFirstResponder()
        }
    }
}

