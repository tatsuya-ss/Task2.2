//
//  ViewController.swift
//  task2.2
//
//  Created by 坂本龍哉 on 2020/10/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var keisanButton: UISegmentedControl!
    @IBOutlet weak var calcButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField1.keyboardType = UIKeyboardType.numberPad
        self.textField2.keyboardType = UIKeyboardType.numberPad
    }
    
    @IBAction func resultButton(_ sender: Any) {
        
        var kekka = Double()
        var num1 = Double(textField1.text!)
        var num2 = Double(textField2.text!)
        
        switch keisanButton.selectedSegmentIndex{
        
        case 0:
            kekka = num1 ?? 0
            kekka += num2 ?? 0
            
        case 1:
            kekka = num1 ?? 0
            kekka -= num2 ?? 0
        case 2:
            kekka = num1 ?? 0
            kekka *= num2 ?? 0
        case 3:
            if num2 != 0{
                kekka = num1 ?? 0
                kekka /= num2 ?? 0
            }else{
                resultLabel.text = "割る数には０以外を入れてください"
            }
            
        default:
            break
            
            
        }
        resultLabel.text = String(kekka)

    }
    
}

