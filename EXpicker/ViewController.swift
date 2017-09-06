//
//  ViewController.swift
//  EXpicker
//
//  Created by 6272 on 9/6/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    let firstType=["0","1","2","3","4","5","6","7","8","9"]
    let secondType=["0","1","2","3","4","5","6","7","8","9"]

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBAction func okMethod(_ sender: Any) {
        let first = firstType[pickerView.selectedRow(inComponent: 0)]
        let second = secondType[pickerView.selectedRow(inComponent: 1)]
        let result = Int(first)!+Int(second)!
        let msg1 = "input "+first+" + "+second+" Result ="
        let message = msg1+String(result)
        
        label.text = message
        let a = UIAlertController(title:"Calculation",message:message,preferredStyle:.alert)
        let button = UIAlertAction(title: "OK", style:.default, handler:nil)
        a.addAction(button)
        self.present(a, animated: true, completion: nil )
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return firstType.count
        }
        else {
            return secondType.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return firstType[row]
        }
        else {
            return secondType[row]
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        pickerView.selectRow(0, inComponent: 0, animated: true)
        pickerView.selectRow(0, inComponent: 1, animated: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

