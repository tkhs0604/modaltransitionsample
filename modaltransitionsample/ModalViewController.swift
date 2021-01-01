//
//  ModalViewController.swift
//  modaltransitionsample
//
//  Created by tkhs0604 on 2021/01/01.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var selectedItemLabel: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = selectedItemLabel
    }
    
    @IBAction func buttonTapped() {
        self.dismiss(animated: true)
    }
    
}
