//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by user on 2021/11/25.
//

import UIKit

class SeguePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
        
    }
    

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    
        
    }
    

}
