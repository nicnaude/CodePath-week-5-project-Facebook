//
//  FadeTransition.swift
//  transitionDemo
//
//  Created by Nicholas Naudé on 12/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class FadeTransition: BaseTransition {
    
    var originalY: CGFloat!
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        originalY = toViewController.view.frame.origin.y
        
        toViewController.view.alpha = 0
        toViewController.view.frame.origin.y -= toViewController.view.frame.size.height
        UIView.animate(withDuration: duration, animations: {
            toViewController.view.alpha = 1
            toViewController.view.frame.origin.y = self.originalY
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        fromViewController.view.frame.origin.y = originalY
        
        fromViewController.view.alpha = 1
        UIView.animate(withDuration: duration, animations: {
            fromViewController.view.alpha = 0
            fromViewController.view.frame.origin.y -= fromViewController.view.frame.size.height
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
}
