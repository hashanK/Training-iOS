//
//  ViewController.swift
//  Bolsta Admin
//
//  Created by Gautham Sritharan on 6/4/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginBtn:UIButton!
    
    @IBOutlet weak var loginWithFacebook:UIButton!
    @IBOutlet weak var loginWithGoogle:UIButton!
    
    @IBOutlet weak var checkBoxBtn:UIButton!
    @IBOutlet weak var rememberMeLable:UILabel!
    
    @IBOutlet weak var emailTextField:UITextField!
    @IBOutlet weak var passwordTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        tap.cancelsTouchesInView = false
        
        self.loginBtnCornerRadius(loginBtn)
        
        self.btnCornerRadius(loginWithFacebook)
        self.btnCornerRadius(loginWithGoogle)
        
        self.textFieldCornerRadius(emailTextField)
        self.textFieldCornerRadius(passwordTextField)
        
        rememberMeLable.isUserInteractionEnabled = true
    }
    
    @IBAction func didCheckBoxTapped(_ sender: UIButton){
        if sender.isSelected {
            sender.isSelected = false
        }else {
            sender.isSelected = true
        }
    }
    
    func loginBtnCornerRadius(_ sender: UIButton){
        sender.layer.cornerRadius = 20
        sender.layer.borderWidth = 1
        sender.layer.borderColor = UIColor.orange.cgColor
    }
    
    func btnCornerRadius(_ sender: UIButton){
        sender.layer.cornerRadius = 20
        sender.layer.borderWidth = 0
    }
    
    func textFieldCornerRadius(_ sender: UITextField){
        sender.layer.cornerRadius = 20
        sender.layer.borderWidth = 1
        sender.layer.borderColor = UIColor.lightGray.cgColor
        
        sender.delegate = self
    }
    
    func textFieldShouldReturn(_ sender: UITextField)->Bool{
        if sender == emailTextField {
            passwordTextField.becomeFirstResponder()
        }else{
            passwordTextField.resignFirstResponder()
        }
        
        return true
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

