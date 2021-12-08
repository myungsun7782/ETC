//
//  OnBoardingPageViewController.swift
//  OnBoardingViewApp
//
//  Created by user on 2021/11/06.
//

import UIKit

class OnBoardingPageViewController: UIPageViewController {

    var pages = [UIViewController]()
    var bottomButtonMargin: NSLayoutConstraint?
    var pageControl = UIPageControl()
    let startIndex = 0
    var currentIndex = 0 {
        didSet {
            pageControl.currentPage = currentIndex
        }
    }
    
    func makePageVC() {
        
        let itemVC1 = OnBoardingItemViewController.init(nibName: "OnBoardingItemViewController", bundle: nil)
        itemVC1.topImage = UIImage(named: "onboarding1")
        itemVC1.mainText = "BMW"
        itemVC1.subText = "Bayerische Motoren Werke AG, commonly known as Bavarian Motor Works, BMW or BMW AG, is a German automobile, motorcycle and engine manufacturing company founded in 1916."
        
        
        let itemVC2 = OnBoardingItemViewController.init(nibName: "OnBoardingItemViewController", bundle: nil)
        itemVC2.topImage = UIImage(named: "onboarding2")
        itemVC2.mainText = "PORSCHE"
        itemVC2.subText = "a German automobile manufacturer specializing in high-performance sports cars, SUVs and sedans, headquartered in Stuttgart, Baden-Württemberg, Germany. The company is owned by Volkswagen AG, a controlling stake of which is owned by Porsche Automobil Holding SE."
        
        
        let itemVC3 = OnBoardingItemViewController.init(nibName: "OnBoardingItemViewController", bundle: nil)
        itemVC3.topImage = UIImage(named: "onboarding3")
        itemVC3.mainText = "MERCEDES BENZ"
        itemVC3.subText = "Mercedes-Benz produces consumer luxury vehicles and commercial vehicles. Their first Mercedes-Benz badged vehicles were produced in 1926. In 2018, Mercedes-Benz was the largest seller of premium vehicles in the world, having sold 2.31 million passenger cars."
        
        
        pages.append(itemVC1)
        pages.append(itemVC2)
        pages.append(itemVC3)
        
        
        // [itemVC1] 첫 번째 페이지
        setViewControllers([itemVC1], direction: .forward, animated: true, completion: nil)
        
        self.dataSource = self
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.makePageVC()
        self.makeBottonButton()
        self.makePageControl()
        
 
    }
    
    func makeBottonButton() {
        let button = UIButton()
        button.setTitle("확인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor.systemBlue
        
        
        button.addTarget(self, action: #selector(dismissPageVC), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        // 오토레이아웃을 설정하기 위해서 false로 설정
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        
        button.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        
        button.heightAnchor.constraint(equalToConstant:45).isActive = true
        
        bottomButtonMargin = button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        bottomButtonMargin?.isActive = true
        
        hideButton()
        
        
        
    }
    
    func makePageControl() {
        self.view.addSubview(pageControl)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = startIndex
        
        
        
        pageControl.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -80).isActive = true
        
        pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        pageControl.addTarget(self, action: #selector(pageControlTapped), for: .valueChanged)
        
        
    }
    
    @objc func pageControlTapped(sender: UIPageControl){
        
        if sender.currentPage > self.currentIndex {
            self.setViewControllers([pages[sender.currentPage]], direction: .forward, animated: true, completion: nil)
        }else {
            self.setViewControllers([pages[sender.currentPage]], direction: .reverse, animated: true, completion: nil)
        }
        
        currentIndex = sender.currentPage
        
        buttonPresentationStyle()
        
    }
    
    @objc func dismissPageVC() {
        self.dismiss(animated: true, completion: nil)
    }


}

extension OnBoardingPageViewController : UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let currentIndex = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        self.currentIndex = currentIndex
        if currentIndex == 0 {
            return pages.last
        }else {
            return pages[currentIndex - 1]
        }
        
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        self.currentIndex = currentIndex
        if currentIndex == pages.count - 1 {
            return pages.first
        }else{
            return pages[currentIndex + 1]
        }
        
        
    }
    
    
}

extension OnBoardingPageViewController: UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
    
        
        guard let currentVC = pageViewController.viewControllers?.first else {
            return
        }
        
        guard let currentIndex = pages.firstIndex(of: currentVC) else {
            return
        }
        
        self.currentIndex = currentIndex
        buttonPresentationStyle()
       
        
    }
    
    func buttonPresentationStyle(){
        if currentIndex == pages.count - 1 {
            // show Button
            self.showButton()
        }else{
            self.hideButton()
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.25, delay: 0, options: [.curveEaseOut], animations: self.view.layoutIfNeeded, completion: nil)
    }

    func showButton() {
        bottomButtonMargin?.constant = 0
    }

    func hideButton() {
        bottomButtonMargin?.constant = 100
    }
}
