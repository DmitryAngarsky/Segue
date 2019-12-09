//
//  GreenViewController.swift
//  Segue
//
//  Created by Дмитрий Тараканов on 12.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    var count = 0
    var textInGreenLabel: String?
    
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBAction func pressPushToBlue(sender: UIButton) {
        
        count += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenLabel.text = textInGreenLabel
    }
}
