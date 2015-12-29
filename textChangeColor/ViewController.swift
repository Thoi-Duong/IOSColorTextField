//
//  ViewController.swift
//  textChangeColor
//
//  Created by SwagSoft Vn on 12/29/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textFieldNum:UITextField!
    @IBOutlet var textFieldDollar:UITextField!
    @IBOutlet var textFieldNote:UITextField!
    @IBOutlet var switchButton:UISwitch!
    var numDelegate = texFieldChangeColorDelegate()
    var dollarDelegate = textDollarDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldNum.delegate = numDelegate
        textFieldNum.keyboardType = UIKeyboardType.NumberPad
        
        textFieldDollar.keyboardType = UIKeyboardType.DecimalPad
        textFieldDollar.delegate = dollarDelegate
        
        textFieldNote.text = "the switch is set to on"
        textFieldNote.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchChangeValue(){
    
        if switchButton.on{
            textFieldNote.enabled = true
            textFieldNote.text = "the switch is set to on"
        }else{
            textFieldNote.enabled = false
            textFieldNote.text = "the switch is set to off"
        }
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
    
}

