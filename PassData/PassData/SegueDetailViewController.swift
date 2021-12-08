//
//  SegueDetailViewController.swift
//  PassData
//
//  Created by user on 2021/10/30.
//

import UIKit

class SegueDetailViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataString = ""
    
    
    // 화면이 만들어 지는 시점 (뷰들이 만들어 지는 시점)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataLabel.text = dataString
        
    }
    
    



}
