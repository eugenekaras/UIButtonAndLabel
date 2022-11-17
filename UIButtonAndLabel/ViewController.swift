//
//  ViewController.swift
//  UIButtonAndLabel
//
//  Created by Евгений Карась on 17.11.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet var actionButtons: [UIButton]!
    
    @IBAction func pressedBurron(_ sender: UIButton) {
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.text = "Hello, World!"
            label.textColor = .red
        } else if sender.tag == 1 {
            label.text = "HI there!"
            label.textColor = .blue
        } else if sender.tag == 2 {
            label.isHidden = true
            button.isHidden = true
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textColor = UIColor.red
        
        
        button.isHidden = true
        
        for button in actionButtons {
 
            button.setTitleColor(.blue, for: UIControl.State.normal)
            button.backgroundColor = .green
        }
        
        button.setTitle("Clear", for: UIControl.State.normal)
        button.setTitleColor(.white, for: UIControl.State.normal)
        button.backgroundColor = .red
        // Do any additional setup after loading the view.
    }


}

