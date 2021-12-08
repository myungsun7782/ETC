//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by user on 2021/11/25.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func tapBackButton(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    

}
