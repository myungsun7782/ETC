//
//  FloatingButtonListViewController.swift
//  FloatingButtonApp
//
//  Created by user on 2021/11/11.
//

import UIKit

class FloatingButtonListViewController: UIViewController {

    @IBOutlet weak var btn1CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn2CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn3CenterY: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        UIView.animate(withDuration: 1) {
//            self.btn1CenterY.constant = 80
//            self.btn2CenterY.constant = 160
//            self.btn3CenterY.constant = 240
//
//            self.view.layoutIfNeeded()
//
//        }
  
        
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
            
            self.view.layoutIfNeeded() // 화면 갱신!
            
        }, completion: nil)


        
     
    }
    
    @IBAction func dismissFloating(_ sender: Any) {
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut) {
            self.btn1CenterY.constant = 0
            self.btn2CenterY.constant = 0
            self.btn3CenterY.constant = 0
            
            self.view.layoutIfNeeded()
            
            
        } completion: { (completion) in
            self.dismiss(animated: false, completion: nil)
        }

        
    }
    


}
