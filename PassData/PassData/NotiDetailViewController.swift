//
//  NotiDetailViewController.swift
//  PassData
//
//  Created by user on 2021/11/01.
//

import UIKit

class NotiDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func notiAction(_ sender: Any) {
        
        let notificationName = Notification.Name ("sendSomeString")
        
        let strDic = ["str" : "noti string"]
        
        NotificationCenter.default.post(name:notificationName, object: nil, userInfo: strDic) // post -> 호출
        
        self.dismiss(animated: true, completion: nil)
    }

    


}
