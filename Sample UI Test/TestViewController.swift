//
//  TestViewController.swift
//  Sample UI Test
//
//  Created by Gautham Sritharan on 6/3/20.
//  Copyright © 2020 Gautham Sritharan. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var cornerView:UIView!
    @IBOutlet weak var imgView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        cornerView.layer.cornerRadius = 25
        cornerView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
        self.setCircularImage()
    }
    
    func setCircularImage(){
        imgView.layer.masksToBounds = true
        imgView.layer.cornerRadius = imgView.bounds.width / 2
    }

}
