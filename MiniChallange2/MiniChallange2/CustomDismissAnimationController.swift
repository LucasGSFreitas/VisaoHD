//
//  CustomDismissAnimationController.swift
//  MiniChallange2
//
//  Created by guilherme babugia on 27/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class CustomDismissAnimationController: NSObject, UIViewControllerAnimatedTransitioning  {
   
    var reverse = false
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return 0.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        let finalFrameForVC = transitionContext.finalFrameForViewController(toViewController)
        let containerView = transitionContext.containerView()
        let bounds = UIScreen.mainScreen().bounds
        toViewController.view.frame = CGRectOffset(finalFrameForVC, 0, -bounds.size.height)
        containerView.addSubview(toViewController.view)
        
        if reverse == false {
            
            UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0.0, options: .CurveLinear, animations: {
                fromViewController.view.alpha = 0.5
                toViewController.view.frame = finalFrameForVC
                }, completion: {
                    finished in
                    transitionContext.completeTransition(true)
                    fromViewController.view.alpha = 1.0
            })
            
        }
    }
}
