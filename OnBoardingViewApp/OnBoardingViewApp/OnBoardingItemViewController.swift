//
//  OnBoardingItemViewController.swift
//  OnBoardingViewApp
//
//  Created by user on 2021/11/06.
//

import UIKit

class OnBoardingItemViewController: UIViewController {

    
    var mainText = ""
    var subText = ""
    var topImage: UIImage? = UIImage()
    
    
    @IBOutlet private weak var topImageView: UIImageView!
    @IBOutlet private weak var mainTitleLabel: UILabel! {
        didSet {
            mainTitleLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        }
    }
    @IBOutlet private weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.font = .systemFont(ofSize: 14, weight: .light)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topImageView.image = topImage
        mainTitleLabel.text = mainText
        descriptionLabel.text = subText
        
        
        
        
    }




}
