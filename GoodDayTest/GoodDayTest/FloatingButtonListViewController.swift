//
//  FloatingButtonListViewController.swift
//  GoodDayTest
//
//  Created by user on 2021/11/20.
//

import UIKit

class FloatingButtonListViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn1CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn2CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn3CenterY: NSLayoutConstraint!
    let image1 = UIImage(systemName: "house")?.withRenderingMode(.alwaysTemplate)
    let image2 = UIImage(systemName: "pencil")?.withRenderingMode(.alwaysTemplate)
    let image3 = UIImage(systemName: "flag")?.withRenderingMode(.alwaysTemplate)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn1.setImage(image1, for: .normal)
        btn2.setImage(image2, for: .normal)
        btn3.setImage(image3, for: .normal)

        btn1.tintColor = .clear
        btn2.tintColor = .clear
        btn3.tintColor = .clear
        
        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
        
        
      
        
        

        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
            
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        btn1.tintColor = .white
        btn2.tintColor = .white
        btn3.tintColor = .white
        
        
        
        
    }
    
    @IBAction func dismissFloating(_ sender: Any) {
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: .curveEaseOut) {
            self.btn1CenterY.constant = 0
            self.btn2CenterY.constant = 0
            self.btn3CenterY.constant = 0
            
            
            
            self.view.layoutIfNeeded()
        } completion: { (completion) in
            
            
            self.dismiss(animated: false, completion: nil)
            
        }

        
        
       
    }
    


}
