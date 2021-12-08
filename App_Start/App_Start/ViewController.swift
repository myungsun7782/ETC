//
//  ViewController.swift
//  App_Start
//
//  Created by user on 2021/10/28.
//

import UIKit

// 실행 - command + R

class ViewController: UIViewController {
    
    // @IBOutlet -> 화면과 연관된 변수
    @IBOutlet weak var testButton: UIButton!
    
    // @IBAction -> 화면과 연관된 기능
    @IBAction func doSomething(_ sender: Any) {
        testButton.backgroundColor = .orange
        
        let storyboard = UIStoryboard(name:"Main", bundle : nil)
        
        // DetailVC viewcontroller 객체화 
        let detailVC = storyboard.instantiateViewController(identifier: "DetailVC") as DetailVC
        
        
        // 화면 전환
        self.present(detailVC, animated: true, completion: nil)
        
        
        
        
    
    }
    override func viewDidLoad() {
        super.viewDidLoad() // viewDidLoad() -> 화면이 올라갈 준비가 되었다
        // Do any additional setup after loading the view.
        
        testButton.backgroundColor = UIColor.red
    }


}

