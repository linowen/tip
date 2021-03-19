//
//  ViewController.swift
//  tip
//
//  Created by Owen on 2020/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var amountTF: UITextField!
    @IBOutlet weak var tipTF: UITextField!
    @IBOutlet weak var showTF: UILabel!
    @IBOutlet weak var show2TF: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcBT(_ sender: Any) {
        //同學寫的按下按鈕時收鍵盤
        /*
        amountTF.resignFirstResponder()
        tipTF.resignFirstResponder()
        func textextFieldShouldReturnt(_ textField: UITextField ) -> Bool{
            amountTF.resignFirstResponder()
            tipTF.resignFirstResponder()
            return true
        }
        */
        //計算小費
        let amountText = amountTF.text!
        let tipText = tipTF.text!
        let amount = Double(amountText)
        let tip = Double(tipText)
        if amount != nil,tip != nil {
            let result = amount! * tip! * 0.01
            //showTF.text = "\(result).%2f"
            showTF.text = String(format: "%.2f", result)
            let sum = amount! + result
            //show2TF.text = "\(sum).%2f"
            show2TF.text = String(format: "%.2f", sum)
        }
        //上課教的按下按鈕時收鍵盤
        view.endEditing(true)
    }
}


