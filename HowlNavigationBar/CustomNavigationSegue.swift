//
//  CustomNavigationSegue.swift
//  HowlNavigationBar
//
//  Created by 유명식 on 2017. 4. 28..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit


class CustomNavigationSegue: UIStoryboardSegue {
    
    
    override func perform() {
        
        
        let viewController : ViewController = self.source as! ViewController
        
        
        
        let destinationController :UIViewController = self.destination
        
        
        //이전 뷰 날리는 코드
        for view in (viewController.frameView!.subviews){
            view.removeFromSuperview()
            
        }
        //넘겨 주기
        let childView : UIView = destination.view
        viewController.currentViewController = destinationController
        viewController.frameView.addSubview(childView)
        
        
        //크기조정
        
        childView.translatesAutoresizingMaskIntoConstraints = false
        
        childView.topAnchor.constraint(equalTo: viewController.frameView.topAnchor).isActive = true
        childView.bottomAnchor.constraint(equalTo: viewController.frameView.bottomAnchor).isActive = true
        childView.leftAnchor.constraint(equalTo: viewController.frameView.leftAnchor).isActive = true
        childView.rightAnchor.constraint(equalTo: viewController.frameView.rightAnchor).isActive = true
        
        
        //새로고침
        viewController.frameView.layoutIfNeeded()
        
        
    }
}
