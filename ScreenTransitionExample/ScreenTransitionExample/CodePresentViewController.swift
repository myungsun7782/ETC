//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by user on 2021/11/25.
//

import UIKit


protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    // delegate pattern을 사용할 때는 weak를 붙여줘야 강한 참조를 막아 메모리 누수를 막을 수 있다.
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        
    }
    
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    


}
