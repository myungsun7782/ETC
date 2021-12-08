//
//  ViewController.swift
//  FloatingButtonApp
//
//  Created by user on 2021/11/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopup" {
            let floatingVC = segue.destination as! FloatingButtonListViewController
            
            
            floatingVC.modalPresentationStyle = .overFullScreen
            
          
            floatingVC.modalPresentationStyle = .overCurrentContext
            
           
        }
    }
}

