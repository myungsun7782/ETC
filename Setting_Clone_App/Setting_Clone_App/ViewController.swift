//
//  ViewController.swift
//  Setting_Clone_App
//
//  Created by user on 2021/11/03.
//

import UIKit










class ViewController: UIViewController {
    
    
    var settingModel = [[SettingModel]]()
    
    @IBOutlet weak var settingTableView: UITableView!
    
    
    func makeData() {
        settingModel.append(
        [SettingModel(leftImageName: "person.circle", menuTitle:"Sign in to your iPhone", subTitle: "Set up iCloud, the App Store, and more", rightImageName: nil)]
        )
        
        
        settingModel.append(
        [SettingModel(leftImageName: "gear", menuTitle: "General", subTitle: nil, rightImageName: "chevron.right"),
        SettingModel(leftImageName: "person.fill", menuTitle: "Accessibility", subTitle: nil, rightImageName: "chevron.right"),
        SettingModel(leftImageName: "hand.raised.fill", menuTitle: "Privacy", subTitle: nil, rightImageName: "chevron.right")]
        )
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    
    // 초기 세팅 하는 곳
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // storyboard에 있는 테이블 뷰와 코드 연결
        // datasSource -> 앱의 데이터모델과 뷰 사이에서 정보를 제공하는 역할
        // delegate -> 테이블 뷰의 형태와 기능을 관리하는 역할
        settingTableView.delegate = self
        settingTableView.dataSource = self
        settingTableView.backgroundColor = UIColor(white: 245/255, alpha: 1)
        
        // 테이블 뷰에 셀을 등록하는 과정
        // Nib이랑 Xib는 같다고 생각하기
//        let nib = UINib(nibName: "ProfileCell", bundle: nil)
        
        settingTableView.register(UINib(nibName: "ProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
        settingTableView.register(UINib(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
        
        // 네비게이션 바 관련 코드
        title = "Settings"
        
        self.view.backgroundColor = UIColor(white: 245/255, alpha: 1)
        makeData()
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    // 테이블 뷰의 한 섹션당 몇 개의 셀을 담을 것인지를 return 해줘야 하는 메소드
    // 각 섹션에서 몇 개의 행을 보여줄지 결정한다.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return settingModel[section].count
        
    }
    
    // 테이블 뷰의 섹션의 수를 return 해줘야 하는 메소드
    // 각 행에서 어떤 정보를 보여줄지 제공
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingModel.count
    }
    
    // 해당 section과 row 안에 있는 셀을 클릭했을 때 이벤트 처리 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 && indexPath.row == 0 {
            
            let myidVC = MyIDViewController(nibName: "MyIDViewController", bundle: nil)
            
            
            self.present(myidVC, animated: true, completion: nil)
            
        
        }else if indexPath.section == 1 && indexPath.row == 0{
            
            if let generalVC = UIStoryboard(name: "GeneralViewController", bundle: nil).instantiateViewController(identifier: "GeneralViewController") as? GeneralViewController  {
                
                
                self.navigationController?.pushViewController(generalVC, animated: true)
                
                
            }
            
            
            
            
            
        
            
        }
    }
    
    
    // 각 row에 해당하는 cell을 return 해줘야 하는 메소드
    // indexPath의 접근자로  row와 cell 에 접근할 수 있다.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 각 세션에 안에 있는 셀에 데이터를 넣어주는 과정
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
            
            cell.topTitle.text = settingModel[indexPath.section][indexPath.row].menuTitle
            
            cell.profileImageView.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].leftImageName)
            
            cell.bottomDescription.text = settingModel[indexPath.section][indexPath.row].subTitle
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
        cell.leftImageView.tintColor = .red
        
        cell.leftImageView.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].leftImageName)
        cell.middleTitle.text = settingModel[indexPath.section][indexPath.row].menuTitle
        cell.rightImageView.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].rightImageName ?? "")
        
        return cell
        
       
    }
    
    // cell의 높이를 지정하는 함수
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        // 첫 번째 row 설정
        if indexPath.row == 0 {
            
            // 자동으로 셀의 크기 만큼 지정하겠다는 의미
            return UITableView.automaticDimension
        }
        
        return 60
    }
    
    
    
    
}
