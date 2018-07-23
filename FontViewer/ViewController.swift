//
//  ViewController.swift
//  FontViewer
//
//  Created by Natallia Zubareva on 22.07.2018.
//  Copyright © 2018 Natallia Zubareva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var font: UIFont!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(font.fontName)")
    }

}

