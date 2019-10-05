//
//  ViewController.swift
//  introXCode
//
//  Created by Apple Device 12 on 10/5/19.
//  Copyright © 2019 Diana Arana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = UIColor.black
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        print("Click en el boton")
        myView.backgroundColor = .yellow
        myButton.setTitle("😻", for: .normal)
        myButton.isHidden = false
    }
    
}

