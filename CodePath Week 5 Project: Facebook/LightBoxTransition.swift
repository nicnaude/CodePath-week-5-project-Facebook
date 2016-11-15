//
//  LightBoxTransition.swift
//  CustomTransitions
//
//  Created by Nicholas Naudé on 12/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.

import UIKit

class LightBoxTransition: BaseTransition {
    var originalY: CGFloat!
    var blackView: UIView!
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        originalY = toViewController.view.frame.origin.y
        
        toViewController.view.alpha = 0
        toViewController.view.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        
        blackView = UIView()
        blackView.frame = fromViewController.view.bounds
        blackView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        blackView.alpha = 0
        fromViewController.view.addSubview(blackView)
        
        UIView.animate(withDuration: duration, animations: {
            self.blackView.alpha = 0.8
            toViewController.view.alpha = 1
            toViewController.view.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        fromViewController.view.transform = CGAffineTransform(scaleX: 0.09, y: 0.09)
        blackView.alpha = 0.8
        
        fromViewController.view.alpha = 1
        UIView.animate(withDuration: duration, animations: {
            fromViewController.view.alpha = 0
            fromViewController.view.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        }) { (finished: Bool) -> Void in
            self.blackView.removeFromSuperview()
            self.finish()
        }
    }
}
