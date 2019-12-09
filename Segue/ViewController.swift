//
//  ViewController.swift
//  Segue
//
//  Created by Дмитрий Тараканов on 12.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var textToBlueLabel: String?
    
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBAction func pressPushToGreen(sender: UIButton) {
        
        count += 1
    }
    
    @IBAction func pressZero(sender: UIButton) {
        
        count = 0
    }
    
    @IBAction func unwindToBlue(segue: UIStoryboardSegue) {
        guard let svc = segue.source as? GreenViewController else { return }
        self.blueLabel.text = "Push: \(svc.count)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let dvc = segue.destination as? GreenViewController else { return }
        dvc.textInGreenLabel = "Push: \(count)"
    }
}

