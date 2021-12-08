//
//  ClosureDetailViewController.swift
//  PassData
//
//  Created by user on 2021/11/01.
//

import UIKit

class ClosureDetailViewController: UIViewController {

    
    
    var myClosure: ((String)-> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    @IBAction func closurePassData(_ sender: Any) {
        
        myClosure?("closure string")
        self.dismiss(animated: true, completion: nil)
    }
    


}
