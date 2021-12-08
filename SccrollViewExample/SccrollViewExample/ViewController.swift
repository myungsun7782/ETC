//
//  ViewController.swift
//  SccrollViewExample
//
//  Created by user on 2021/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myColor1 = UIColor(rgb: 0x322B3B).cgColor
        let myColor2 = UIColor(rgb: 0x6A95CC).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = myView.bounds
        
        gradientLayer.colors = [myColor1, myColor2]
        
        myView.layer.addSublayer(gradientLayer)
        
        
//        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        
//        let newView = UIView()
//        let titleLabel = UILabel()
//
//
////        newView.backgroundColor = .lightGray
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = newView.bounds
//        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.red.cgColor]
//        newView.layer.addSublayer(gradientLayer)
//
//        titleLabel.text = "DAY 1"
//        titleLabel.font = UIFont.systemFont(ofSize: 30)
//
//        // Autolayout constraint 값을 설정하려면 절대적인 위치와 크기를 정해준 코드를 지워줘야 한다.
////        newView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        self.view.addSubview(newView)
//        newView.addSubview(titleLabel)
//
//
//
//        // Autolayout을 사용하기 위해서 설정해줘야 하는 조건
//        newView.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        newView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//
//        newView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//
//        newView.widthAnchor.constraint(equalToConstant: 230).isActive = true
//        newView.heightAnchor.constraint(equalToConstant: 230).isActive = true
////        newView.layer.cornerRadius = 115
//
//        titleLabel.centerXAnchor.constraint(equalTo: newView.centerXAnchor).isActive = true
//
//        titleLabel.centerYAnchor.constraint(equalTo: newView.centerYAnchor).isActive = true
//
       
        
        
        
        
        
        
        
        
        
        
        
//        myView.backgroundColor = .lightGray
//
//        myView.layer.cornerRadius = myView.frame.size.width / 2
//
//        myView.layer.borderWidth = 2
//
//        myView.layer.borderColor = UIColor.red.cgColor
//
//        self.view.addSubview(myView)
//
//        myView.translatesAutoresizingMaskIntoConstraints = false
               
//        myView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//
//        myView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        
        
        
//        let images = [
//                "onboarding1.jpg",
//                "onboarding2.jpg",
//                "onboarding3.jpeg"]
//
//        for i in 0..<images.count{
//             let imageView = UIImageView()
//             imageView.image = UIImage(named: images[i])
//             imageView.contentMode = .scaleAspectFit //  사진의 비율을 맞춤.
//             let xPosition = self.view.frame.width * CGFloat(i)
//
//             imageView.frame = CGRect(x: xPosition, y: 0,
//             width: self.view.frame.width,
//             height: self.view.frame.height) // 즉 이미지 뷰가 화면 전체를 덮게 됨.
//
//             scrollView.contentSize.width =
//                self.view.frame.width * CGFloat(1+i)
//
//             scrollView.addSubview(imageView)
//         }
        
        
    }



}
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




