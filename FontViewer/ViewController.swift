//
//  ViewController.swift
//  FontViewer
//
//  Created by Natallia Zubareva on 22.07.2018.
//  Copyright © 2018 Natallia Zubareva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fontFamily: UILabel!
    @IBOutlet weak var fontName: UILabel!
    @IBOutlet weak var example: UILabel!
    @IBOutlet weak var height: UILabel!
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
        fontFamily.text = font.familyName
        fontName.text = font.fontName
        example.font = font.withSize(17)
        example.text = "Example"
        height.text = "\(example.font.pointSize)"
    }

}

