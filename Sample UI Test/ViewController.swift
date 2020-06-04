//
//  ViewController.swift
//  Sample UI Test
//
//  Created by Gautham Sritharan on 5/29/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Emailbtn: UIButton!
    @IBOutlet weak var Phonebtn: UIButton!
    @IBOutlet weak var emailBottomBorder: UIView!
    @IBOutlet weak var phoneBottomBorder: UIView!
    
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var emailStackView: UIStackView!
    @IBOutlet weak var phoneStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeSegmentControll(tagID: 0)
        self.contentVisibility(tagID: 0)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleTabBtn(_ sender: UIButton) {
        self.changeSegmentControll(tagID: sender.tag)
        self.contentVisibility(tagID: sender.tag)
    }
    
    @IBAction func btn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "password") as! PasswordViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func changeSegmentControll(tagID: Int) {
        switch tagID {
        case 0:
            Emailbtn.setTitleColor(.green, for: .normal)
            emailBottomBorder.backgroundColor = .green
            
            Phonebtn.setTitleColor(.white, for: .normal)
            phoneBottomBorder.backgroundColor = .clear
        default:
            Phonebtn.setTitleColor(.green, for: .normal)
            phoneBottomBorder.backgroundColor = .green
            
            Emailbtn.setTitleColor(.white, for: .normal)
            emailBottomBorder.backgroundColor = .clear
        }
    }
    
    func contentVisibility(tagID: Int){
        switch tagID {
        case 0:
            emailStackView.isHidden = true
            phoneStackView.isHidden = false
        default:
            emailStackView.isHidden = false
            phoneStackView.isHidden = true
        }
    }

}

