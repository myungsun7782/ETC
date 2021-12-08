//
//  DetailViewController.swift
//  PassData
//
//  Created by user on 2021/10/29.
//

import UIKit

class DetailViewController: UIViewController {

    var someString = ""

    @IBOutlet weak var someLabel: UILabel! // 화면에 올라갈 준비가 되었을 때 생성 된다. (화면에 올라가기 전에는 nil 상태)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        someLabel.text = someString
    }



}
