//
//  ViewController.swift
//  textChangeColor
//
//  Created by SwagSoft Vn on 12/29/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField:UITextField!
    var colorChangeDelegate = texFieldChangeColorDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = colorChangeDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

