//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by user on 2021/11/25.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        
        
        // 스토리보드에 있는 뷰 컨트롤러를 인스턴스화 시킨다.
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        
        viewController.name = "Gunter"
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
        
    }
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return }
        
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
        
        viewController.delegate = self
        
        self.present(viewController, animated: true, completion: nil)
    }
    
    // 세그 웨이를 실행하기 직전에 prepare함수가 호출된다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "Gunter"
        }
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
}

