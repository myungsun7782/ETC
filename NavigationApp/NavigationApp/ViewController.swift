//
//  ViewController.swift
//  NavigationApp
//
//  Created by user on 2021/11/12.
//

// navigation controller

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNaviTitleImage()
        makeBackButton()
        naviBackgroundDesign()

        
        makeRightAlarmButton()
         
    }
    
    
    func makeRightAlarmButton() {
//        let image = UIImage(systemName: "alarm.fill")?.withRenderingMode(.alwaysOriginal)
//        let rightItem = UIBarButtonItem(image: image, style: .done, target: self, action: #selector(rightItemClick))
//
//        let image2 = UIImage(systemName: "alarm")?.withRenderingMode(.alwaysOriginal)
//        let rightItem2 = UIBarButtonItem(image: image2, style: .done, target: self, action: #selector(rightItemClick2))
//        rightItem2.imageInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: -20)
//
//        self.navigationItem.rightBarButtonItems = [rightItem, rightItem2]
        
        let config = UIImage.SymbolConfiguration(pointSize: 20)
        
        let btn1 = UIButton()
        btn1.setImage(UIImage(systemName: "alarm.fill",withConfiguration: config), for: .normal)
        btn1.addTarget(self, action: #selector(rightItemClick), for: .touchUpInside)
        let btn2 = UIButton()
        btn2.setImage(UIImage(systemName: "alarm",withConfiguration: config), for: .normal)
        btn2.addTarget(self, action: #selector(rightItemClick2), for: .touchUpInside)
        let stackView = UIStackView(arrangedSubviews: [btn1,btn2])
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.distribution = .equalSpacing
        
        
        
        let customItem = UIBarButtonItem(customView: stackView)
        
        self.navigationItem.rightBarButtonItem = customItem
        
        
    }
    
    
    @objc func rightItemClick() {
        print("right item click")
    }
    
    @objc func rightItemClick2() {
        print("right item2 click")
    }
    func naviBackgroundDesign() {
        self.navigationController?.navigationBar.backgroundColor = .red
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        // status bar design
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        
        sceneDelegate?.statusBarView.backgroundColor = .yellow
        
        let window = UIApplication.shared
            .windows.filter{$0.isKeyWindow}.first
        
        
        if let hasStatusBar = sceneDelegate?.statusBarView {
            window?.addSubview(hasStatusBar)
        }
        
        
        
        
        
    }
    
    func makeBackButton() {
//        self.navigationItem.backButtonTitle = "뒤로"
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(systemItem: .bookmarks)
        
        var backImage = UIImage(systemName: "backward")
        backImage = backImage?.withRenderingMode(.alwaysOriginal)
        
        
        self.navigationController?.navigationBar.backIndicatorImage = backImage
        self.navigationController?.navigationBar.tintColor = .orange
        
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        
        
        self.navigationItem.backButtonTitle = ""
        
        
    }
    
    func setNaviTitleImage() {
            
        //        self.navigationItem.title = "main View"
        
        
        let btn = UIButton()
        //        btn.backgroundColor = .orange
        btn.setTitleColor(.brown, for: .normal)
        btn.setTitle("custom button", for: .normal)
        btn.widthAnchor.constraint(equalToConstant: 120).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        btn.addTarget(self, action: #selector(testAction), for: .touchUpInside)
        self.navigationItem.titleView = btn
        
        
    }
    
    @objc func testAction() {
        print("test action")
    }
    


}

