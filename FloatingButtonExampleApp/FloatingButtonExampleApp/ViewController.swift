//
//  ViewController.swift
//  FloatingButtonExampleApp
//
//  Created by user on 2021/11/15.
//

import UIKit
import JJFloatingActionButton


extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

class ViewController: UIViewController {

    let actionButton = JJFloatingActionButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        createFloatingButton()
        
    }
    
    func createFloatingButton(){
        
        
        
        
        // 플로팅 버튼의 색깔 지정 -> 플로팅 버튼 누르면 올라가는 아이템 이미지 색깔도 똑같이 지정된다.
        
        actionButton.buttonColor = UIColor(rgb: 0x6995CD)
//        actionButton.buttonColor = .green
        // 플로팅 버튼 안에 들어가는 "+" 버튼 색깔 지정
        actionButton.buttonImageColor = UIColor(rgb: 0x322B3B)

        // 플로팅 버튼 누르면 덮어 씌워지는 배경색 지정
        actionButton.overlayView.backgroundColor = UIColor(white: 0, alpha: 0)
        
        actionButton.buttonDiameter = 65
        
        actionButton.itemSizeRatio = 0.7
        
        actionButton.configureDefaultItem { item in
            
            item.buttonColor = UIColor(rgb: 0x6995CD)
            item.buttonImageColor = .white
            item.titleLabel.font = .boldSystemFont(ofSize: 15)
            
          
            
        }
        
    
        
        actionButton.addItem(title: "홈", image: UIImage(systemName: "house")?.withRenderingMode(.alwaysTemplate)) { item in
          
        }
        
        actionButton.addItem(title: "미션", image: UIImage(systemName: "flag")?.withRenderingMode(.alwaysTemplate)) { item in
          
        }
        
        actionButton.addItem(title: "일기장", image: UIImage(systemName: "applepencil")?.withRenderingMode(.alwaysTemplate)) { item in
          
        }
        
        actionButton.addItem(title: "마이 페이지", image: UIImage(systemName: "person")?.withRenderingMode(.alwaysTemplate)) { item in
          
        }
        
        
        
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        
    }


}

