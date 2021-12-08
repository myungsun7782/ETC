//
//  ProfileCell.swift
//  Setting_Clone_App
//
//  Created by user on 2021/11/03.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var topTitle: UILabel!
    @IBOutlet weak var bottomDescription: UILabel!
    // 처음 시작 포인트 ->  nib이라는 파일과 연결되서 메모리에 올라가는 시점
    override func awakeFromNib() {
        super.awakeFromNib()
        let profileHeight:CGFloat = 60
        
        // cornerRadius -> 곡률 지정 
        profileImageView.layer.cornerRadius = profileHeight / 2
        
        topTitle.textColor = .blue
        topTitle.font = UIFont.systemFont(ofSize: 20)
        
        bottomDescription.textColor = .darkGray
        bottomDescription.font = UIFont.systemFont(ofSize: 16)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
