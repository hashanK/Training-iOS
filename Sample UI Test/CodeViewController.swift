//
//  CodeViewController.swift
//  Sample UI Test
//
//  Created by Gautham Sritharan on 5/29/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    @IBOutlet weak var tfOne: UITextField!
    @IBOutlet weak var tfTwo: UITextField!
    @IBOutlet weak var tfThree: UITextField!
    @IBOutlet weak var tfFour: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension CodeViewController{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        /*if textField == tfOne {
            tfTwo.becomeFirstResponder()
        }
            
        else if textField == tfTwo {
            tfThree.becomeFirstResponder()
        }
        else if textField == tfThree {
            tfFour.becomeFirstResponder()
        }
        else{
            tfFour.resignFirstResponder()
        }
        
        return true
    }*/
        tfOne.resignFirstResponder()
    
    }
}
