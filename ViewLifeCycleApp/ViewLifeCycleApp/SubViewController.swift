//
//  SubViewController.swift
//  ViewLifeCycleApp
//
//  Created by user on 2021/11/07.
//

import UIKit

class SubViewController: UIViewController {

    
    var user:User?
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user?.name
        
//        let tempAge:String = String(user?.age ?? 0)
        ageLabel.text = String(user?.age ?? 0)
        addressLabel.text = user?.address
       
    }




}
