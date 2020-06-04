//
//  toggleTabViewController.swift
//  Sample UI Test
//
//  Created by Gautham Sritharan on 6/1/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class toggleTabViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Emailbtn: UIButton!
    @IBOutlet weak var Phonebtn: UIButton!
    @IBOutlet weak var emailBottomBorder: UIView!
    @IBOutlet weak var phoneBottomBorder: UIView!
    
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var emailStackView: UIStackView!
    @IBOutlet weak var phoneStackView: UIStackView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegatesForTextFields()
        self.changeSegmentControll(tagID: 0)
        self.contentVisibility(tagID: 0)
    }
    
    @IBAction func toggleTabBtn(_ sender: UIButton) {
        self.changeSegmentControll(tagID: sender.tag)
        self.contentVisibility(tagID: sender.tag)
    }
    
    func delegatesForTextFields() {
        emailTextField.delegate = self
        phoneTextField.delegate = self
    }
    
    func changeSegmentControll(tagID: Int) {
        switch tagID {
        case 0:
            Emailbtn.setTitleColor(.red, for: .normal)
            emailBottomBorder.backgroundColor = .red
            
            Phonebtn.setTitleColor(.black, for: .normal)
            phoneBottomBorder.backgroundColor = .clear
        default:
            Phonebtn.setTitleColor(.red, for: .normal)
            phoneBottomBorder.backgroundColor = .red
            
            Emailbtn.setTitleColor(.black, for: .normal)
            emailBottomBorder.backgroundColor = .clear
        }
    }
    
    func contentVisibility(tagID: Int){
        switch tagID {
        case 0:
            emailStackView.isHidden = false
            phoneStackView.isHidden = true
        default:
            emailStackView.isHidden = true
            phoneStackView.isHidden = false
        }
    }

}
