//
//  ViewController.swift
//  OnBoardingViewApp
//
//  Created by user on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {

    var didShowOnboardingView = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        if didShowOnboardingView == false {
            didShowOnboardingView = true
            
            let pageVC = OnBoardingPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: .none)
            
            pageVC.modalPresentationStyle = .fullScreen
            self.present(pageVC, animated: true, completion: nil)
        }
        
       
        
//        let itemVC = OnBoardingItemViewController.init(nibName: "OnBoardingItemViewController", bundle: nil)
//
//        self.present(itemVC, animated: true, completion: nil)
    }


}

