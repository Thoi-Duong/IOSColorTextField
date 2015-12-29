//
//  textFieldChangeColorDelegate.swift
//  textChangeColor
//
//  Created by SwagSoft Vn on 12/29/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import Foundation
import UIKit

class texFieldChangeColorDelegate: NSObject, UITextFieldDelegate{
    
    
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        
        let r = CGFloat (Float(arc4random()) /  Float(UInt32.max))
        let g = CGFloat (Float(arc4random()) /  Float(UInt32.max))
        let b = CGFloat (Float(arc4random()) /  Float(UInt32.max))
        
        let color:UIColor! =  UIColor(red: r, green: g, blue:b, alpha: 1)
        print("text:\(textField.text!)___string:\(string)")
        if string == ""{
            return true
        }
        textField.textColor = color
        if textField.text?.characters.count == 0{
            return true
        }
        
        let num1 = Int(string)
        let num2 = Int(textField.text!)
    
        if num1 == nil || num2 == nil {
        
//            var str:String = textField.text!
//            str.removeAtIndex(str.endIndex.predecessor())
//            
//            textField.text = str
            
            return false
        }
        
         if textField.text?.characters.count < 5 {
            return true
        }
        
        
        
        
        return false
        
    }
    

}