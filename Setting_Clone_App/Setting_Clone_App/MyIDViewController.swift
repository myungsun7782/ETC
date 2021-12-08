//
//  MyIDViewController.swift
//  Setting_Clone_App
//
//  Created by user on 2021/11/05.
//

import UIKit

class MyIDViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
//        didSet{
//            nextButton.isEnabled = false
//        }
    
    
    @IBAction func doCancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        
        textFieldDidChange(sender: emailTextField)
    }
    
    
    @objc func textFieldDidChange(sender: UITextField) {
        if sender.text?.isEmpty == true {
            nextButton.isEnabled = false
        }else{
            nextButton.isEnabled = true
        }
    }




}
