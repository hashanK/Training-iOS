//
//  PasswordViewController.swift
//  Sample UI Test
//
//  Created by Gautham Sritharan on 6/2/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didNavigateToProfile(_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "profileVC") as! ProfileViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }

}
