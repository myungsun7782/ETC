//
//  ViewController.swift
//  CircularProgressbarApp
//
//  Created by user on 2021/11/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animatedCountingLabel: UILabel!
    
    
    var circularProgressBarView: CircularProgressBarView!
    var circularViewDuration: TimeInterval = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCircularProgressBarView()
    }
    
    func setUpCircularProgressBarView() {
            // set view
            circularProgressBarView = CircularProgressBarView(frame: .zero)
            // align to the center of the screen
            circularProgressBarView.center = view.center
            // call the animation with circularViewDuration
            circularProgressBarView.progressAnimation(duration: circularViewDuration)
            // add this view to the view controller
            view.addSubview(circularProgressBarView)
        }


}

