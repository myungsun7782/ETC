//
//  PopupViewController.swift
//  PopUpLayoutApp
//
//  Created by user on 2021/11/09.
//

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closePopUp(_ sender: Any) {
        
        self.dismiss(animated: false, completion: nil)
    }
    

}
