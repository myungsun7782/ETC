//
//  DraggableView.swift
//  PanGestureApp
//
//  Created by user on 2021/11/05.
//

import Foundation
import UIKit

class DraggbleView : UIView {
    
    var dragType = DragType.none
    
    init(){
        super.init(frame: CGRect.zero)
        
        let pen = UIPanGestureRecognizer(target: self, action: #selector(dragging))
        
        self.addGestureRecognizer(pen)
    }
    
    
    // interface builder에서 UIView를 만드는 경우 호출된다.
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let pen = UIPanGestureRecognizer(target: self, action: #selector(dragging))
        
        self.addGestureRecognizer(pen)
        
//        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func dragging(pan: UIPanGestureRecognizer){
        switch pan.state {
        case .began: // 누르기 시작할 때
            print("began")
            
        case .changed: // 눌러서 움직일 때
            
            // 부모 뷰 기준으로 얼마만큼 움직였는지를 나타내는 변수
            let delta = pan.translation(in: self.superview)
            
            // 기준 점을 나타내는 변수 (절대 좌표)
            var myposition = self.center
            
            if dragType == .x {
                myposition.x += delta.x
            }else if dragType == .y {
                myposition.y += delta.y
            }else {
                myposition.x += delta.x
                myposition.y += delta.y
            }
            
            
            
            
            self.center = myposition
            pan.setTranslation(CGPoint.zero, in: self.superview)
        
        case .ended, .cancelled:
            print("ended cancelled")
            if self.frame.minX < 0 {
                self.frame.origin.x = 0
            }
            
            if let hasSuperView = self.superview {
                if self.frame.maxX > hasSuperView.frame.maxX {
                    self.frame.origin.x = hasSuperView.frame.maxX - self.bounds.width
                }
            }
            
        
            
        default:
            break
        }
        
    }
}
