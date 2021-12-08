//
//  ViewController.swift
//  GoodDayTest
//
//  Created by user on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var floatingButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopup" {
            let floatingVC = segue.destination as! FloatingButtonListViewController
            
//            floatingVC.modalPresentationStyle = .overFullScreen
            
            floatingVC.modalPresentationStyle = .overCurrentContext
            
            
            
        }
    }
}

