//
//  ViewController.swift
//  Sample UI Test
//
//  Created by Gautham Sritharan on 5/29/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn(_sender: Any?){
        let vc = storyboard?.instantiateViewController(withIdentifier: "email") as! EmailViewController
        vc.modalPresentationStyle = .popover
        present(vc, animated: true)
    }


}

