//
//  ViewController.swift
//  LEDBoard
//
//  Created by user on 2021/11/25.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        self.contentsLabel.textColor = .yellow
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController{
            settingViewController.delegate = self
            settingViewController.ledText = self.contentsLabel.text
            settingViewController.textColor = self.contentsLabel.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black
            
            
        }
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.contentsLabel.text = text
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
        
        
        
        
    }


}

