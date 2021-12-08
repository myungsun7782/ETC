//
//  ViewController.swift
//  ViewLifeCycleApp
//
//  Created by user on 2021/11/07.
//

import UIKit



class ViewController: UIViewController {


    var user:User = User(name: "choi", age: 26, address:        "korea")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func moveToSub(_ sender: Any) {
        let subVC = SubViewController(nibName: "SubViewController", bundle: nil)
        
       
        subVC.user = user
        
        self.present(subVC, animated: true, completion: nil)
        
        
        
    }
    


}

