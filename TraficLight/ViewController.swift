//
//  ViewController.swift
//  TraficLight
//
//  Created by Дмитрий  on 17.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewGreen: UIView!
    
    @IBOutlet weak var viewYellow: UIView!
    
    @IBOutlet weak var viewRed: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewGreen.backgroundColor = .green
        viewYellow.backgroundColor = .yellow
        viewRed.backgroundColor = .red
        
        viewGreen.alpha = 0.30
        viewRed.alpha = 1
        viewYellow.alpha = 0.30
    }
    
    @IBAction func startButttonTaped() {
        viewRed.alpha = 1.0
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500)) {
            self.viewRed.alpha = 0.30
            self.viewYellow.alpha = 1.0
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1000)) {
                self.viewYellow.alpha = 0.30
                self.viewGreen.alpha = 1.0
                
                DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1500)) {
                    self.viewGreen.alpha = 0.30
                    self.viewRed.alpha = 1
                }
            }
        }
    }
    
}

