//
//  DelegateDetailViewController.swift
//  PassData
//
//  Created by user on 2021/10/30.
//

import UIKit

protocol DelegateDetailViewControllerDelegate: AnyObject {
    func passString(string: String)
}


class DelegateDetailViewController: UIViewController {

    
    // 구현되는 쪽에서 사용하고 없어지게 만들어야 되기 때문에 weak 설정
    weak var delegate:DelegateDetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    @IBAction func passDataToMainVC(_ sender: Any) {
        delegate?.passString(string: "delegate pass Data")
        self.dismiss(animated: true, completion: nil)
    }
    
    
  
}
