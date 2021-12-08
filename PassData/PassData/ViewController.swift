

// passing data (데이터를 넘겨주는 방법)
// 6가지

// 1. instance property
// 2. segue (세그 웨이) -> 여러 개의 뷰컨트롤러가 한 스토리보드에 많이 있을 때 사용
// 3. instance
// 4. delegate (delegation) pattern 대리, 위임, 대신한다
// 5. closure
// 6. Notification -> 연결점이 없는 경우 사용

import UIKit




class ViewController: UIViewController {

    var someString = ""
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let notificationName = Notification.Name ("sendSomeString")
        NotificationCenter.default.addObserver(self, selector: #selector(showSomeString), name: notificationName, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc func keyboardWillShow() {
        print("will show")
    }
    
    @objc func showSomeString(notification: Notification){
        
        if let str = notification.userInfo?["str"] as? String {
            self.dataLabel.text = str
        }
        
        
    }
    
    
    
    @IBAction func moveToNoti(_ sender: Any) {
        
        let detailVC = NotiDetailViewController(nibName: "NotiDetailViewController", bundle: nil)
        
        self.present(detailVC, animated: true, completion: nil)
    }
    
    
    
    
    
    // 1번 방법
    @IBAction func moveToDetail(_ sender: Any) {
        
        // nibName -> 파일 이름
        // DetailViewController instance화  (버튼을 누르면 이동할 화면을 인스턴스화 시킨다)
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        let passString = "내가 넘겨 줄 데이터"
        
         detailVC.someString = passString
        
        // 화면 이동
        self.present(detailVC, animated: true, completion: nil)
   
        
    }

    
    
    // 2번 방법
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetail" {
            if let detailVC = segue.destination as? SegueDetailViewController{
                
//                detailVC.dataLabel.text = "abcd" -> 화면이 만들어지기 전에 호출 되었으므로 detailVC.dataLabel은 nil 상태이다. 따라서, 직접 접근하게 되면 오류가 발생한다.
                detailVC.dataString = "abcd"
                
            }
        }
    }
    
    // 3번 방법
    @IBAction func moveToInstance(_ sender: Any) {

        let detailVC = InstanceDetailViewController(nibName: "InstanceDetailViewController", bundle: nil)

        detailVC.mainVC = self // 주소를 넘겨준다.

        self.present(detailVC, animated: true, completion: nil)
    }
    
    // 4번 방법
    @IBAction func moveToDelegate(_ sender: Any) {
        let detailVC = DelegateDetailViewController(nibName: "DelegateDetailViewController", bundle: nil)
        
        
        // extension 안에 있는 부분만 넘어간다.
        detailVC.delegate = self // self는 delegate변수의 protocol 타입을 지켜야 한다.
        
        
        self.present(detailVC, animated: true, completion: nil)
        
    }
    
    // 5번 방법
    @IBAction func moveToClosure(_ sender: Any) {
        let detailVC = ClosureDetailViewController(nibName: "ClosureDetailViewController", bundle: nil)
        detailVC.myClosure = { str in
            // 구현부
            self.dataLabel.text = str
            
        }
        
        self.present(detailVC, animated: true, completion: nil)
    }
    
    
}

extension ViewController: DelegateDetailViewControllerDelegate{
    func passString(string: String) {
        self.dataLabel.text = string
    }
    
    
}

