//
//  SceneTchoukball.swift
//  MiniChallange2
//
//  Created by Lucas Gabriel Silvério de Freitas on 26/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class SceneTchoukball: UIViewController {
    
    @IBOutlet weak var imageMan1: UIImageView!
    @IBOutlet weak var imageMan2: UIImageView!
    @IBOutlet weak var imageMan3: UIImageView!
    @IBOutlet weak var imageMan4: UIImageView!
    @IBOutlet weak var imageMan5: UIImageView!
    @IBOutlet weak var imageMan6: UIImageView!
    
    
    let images = [
        UIImage(named: "simple_man3")!,
        UIImage(named: "simple_man2")!,
        UIImage(named: "simple_man4")!,
        UIImage(named: "simple_man5")!,
        UIImage(named: "simple_man7")!,
        UIImage(named: "simple_man6")!]
    
    var index = 0
    let animationDuration: NSTimeInterval = 0.10
    let switchingInterval: NSTimeInterval = 3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //imageView.image = images[index++]
        
        //animateImageView()
        imageMan1.alpha = 1
        imageMan2.alpha = 0
        imageMan3.alpha = 0
        imageMan4.alpha = 0
        imageMan5.alpha = 0
        imageMan6.alpha = 0
    }
    
//    func animateImageView() {
//        CATransaction.begin()
//        
//        CATransaction.setAnimationDuration(animationDuration)
//        CATransaction.setCompletionBlock {
//            let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(self.switchingInterval * NSTimeInterval(NSEC_PER_SEC)))
//            dispatch_after(delay, dispatch_get_main_queue()) {
//                self.animateImageView()
//            }
//        }
//        
//        let transition = CATransition()
//        transition.type = kCATransitionFade
//        
//        
//        imageView.layer.addAnimation(transition, forKey: kCATransition)
//        imageView.image = images[index]
//        
//        CATransaction.commit()
//        
//        index = index < images.count - 1 ? index + 1 : 0
//    }
    
    @IBAction func startAnimation(sender: AnyObject) {
        UIView.animateKeyframesWithDuration(4.0, delay: 0.0, options: nil, animations: { () -> Void in
            

            UIView.addKeyframeWithRelativeStartTime(0.23, relativeDuration: 0.00000000000000000001, animations: { () -> Void in
                //self.imageMan1.alpha = 0
                self.imageMan1.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.25, relativeDuration: 0.00000000000000000001, animations: { () -> Void in
                self.imageMan2.alpha = 1
                
            })
            UIView.addKeyframeWithRelativeStartTime(0.44, relativeDuration: 0.00000000000001, animations: { () -> Void in
                //self.imageMan2.alpha = 0
                //self.imageMan2.backgroundColor = .redColor()
                self.imageMan2.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.46, relativeDuration: 0.00000000001, animations: { () -> Void in
                self.imageMan3.alpha = 1
            })
            UIView.addKeyframeWithRelativeStartTime(0.60, relativeDuration: 0.00000000001, animations: { () -> Void in
                //self.imageMan3.alpha = 0
                self.imageMan3.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.62, relativeDuration: 0.00000000000000000000001, animations: { () -> Void in
                self.imageMan4.alpha = 1
            })
            UIView.addKeyframeWithRelativeStartTime(0.76, relativeDuration: 0.00000000000000000000001, animations: { () -> Void in
                //self.imageMan4.alpha = 0
                self.imageMan4.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.75, relativeDuration: 0.00000000000000001, animations: { () -> Void in
                self.imageMan5.alpha = 1
            })
            UIView.addKeyframeWithRelativeStartTime(0.99, relativeDuration: 0.000000000000000001, animations: { () -> Void in
                //self.imageMan5.alpha = 0
                self.imageMan5.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.99, relativeDuration: 0.00000000000000001, animations: { () -> Void in
                self.imageMan6.alpha = 1
            })
        }) { (result) -> Void in
            
        }
        //UIView.animateKeyframesWithDuration(2.0, delay: 0.3, options: nil, animations: { () -> Void in
            
            //UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.3, animations: { () -> Void in
//                
//                self.tutorialView?.alpha = 0
//            })
//            UIView.addKeyframeWithRelativeStartTime(0.4, relativeDuration: 0.40, animations: { () -> Void in
//                
//                self.animateBlur()
//            })
//            UIView.addKeyframeWithRelativeStartTime(0.6, relativeDuration: 0.4, animations: { () -> Void in
//                
//                self.view.layoutIfNeeded()
//            })
//            
//            }) { (result) -> Void in
//                self.tapGesture.enabled = true
//                self.blurView?.removeFromSuperview()
    }
    
}
