//
//  CodeViewController.swift
//  Sample UI Test
//
//  Created by Gautham Sritharan on 5/29/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn2(_sender: Any?){
        let vc = storyboard?.instantiateViewController(withIdentifier: "stwo") as! scrolltwoViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }

}
