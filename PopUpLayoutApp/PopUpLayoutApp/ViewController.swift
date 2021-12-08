//
//  ViewController.swift
//  PopUpLayoutApp
//
//  Created by user on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showPopup(_ sender: Any) {
        // popupViewController
        
        let storyBoard = UIStoryboard.init(name: "PopupViewController", bundle: nil)
        
        let popupVC = storyBoard.instantiateViewController(withIdentifier: "popupVC")
        
        
          popupVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popupVC, animated: false, completion: nil)
        
        
        
    }
}

