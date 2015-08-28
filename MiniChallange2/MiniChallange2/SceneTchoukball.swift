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
    @IBOutlet weak var imageBall1: UIImageView!
    @IBOutlet weak var imageBall2: UIImageView!
    @IBOutlet weak var imageBall3: UIImageView!
    @IBOutlet weak var imageBall4: UIImageView!
    
    
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
        
        imageBall1.alpha = 1
        imageBall2.alpha = 0
        imageBall3.alpha = 0
        imageBall4.alpha = 0
    }
    
    
    //---------------------AQUI GIULINAAAA, MITA NESSA ANIMACAO TBM ------------------------------
    func playBall()
    {
        var transladeAndScaleTransform = imageBall4.layer.transform
        
        //Para fazer a peteca ir para o outro lado da rede.
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 20, -250, 0)
        rotateBallImage(transladeAndScaleTransform)
        self.imageBall4.layer.zPosition = 2
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 50, -10, 0)
        rotateBallImage(transladeAndScaleTransform)
        // self.imagePeteca.layer.zPosition = -2
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 70, 10, 0)
        rotateBallImage(transladeAndScaleTransform)
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 10, 160, 0)
        
        
        
        transladeAndScaleTransform = CATransform3DScale(transladeAndScaleTransform, 0.5, 0.5, 1)
        
        rotateBallImage(transladeAndScaleTransform)
        
    }
    func rotateBallImage(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 2.0
        animation.toValue = NSValue(CATransform3D: transform)
        
        //self.imageQuadra.layer.zPosition = -1000
        
        self.imageBall4.layer.addAnimation(animation, forKey: nil)
        
        
    }
    
    //---------------------ATÉ AQUI-----------------------------------------------------
    
    @IBAction func startAnimation(sender: AnyObject) {
        UIView.animateKeyframesWithDuration(2.0, delay: 0.0, options: nil, animations: { () -> Void in
            

            UIView.addKeyframeWithRelativeStartTime(0.3, relativeDuration: 0.00000000000000000001, animations: { () -> Void in
                //self.imageMan1.alpha = 0
                self.imageMan1.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
                self.imageBall1.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.31, relativeDuration: 0.00000000000000000001, animations: { () -> Void in
                self.imageMan2.alpha = 1
                self.imageBall2.alpha = 1
                
            })
            UIView.addKeyframeWithRelativeStartTime(0.60, relativeDuration: 0.00000000000001, animations: { () -> Void in
                //self.imageMan2.alpha = 0
                //self.imageMan2.backgroundColor = .redColor()
                self.imageMan2.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
                self.imageBall2.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.61, relativeDuration: 0.00000000001, animations: { () -> Void in
                self.imageMan3.alpha = 1
                self.imageBall3.alpha = 1
            })
            UIView.addKeyframeWithRelativeStartTime(0.97, relativeDuration: 0.00000000001, animations: { () -> Void in
                //self.imageMan3.alpha = 0
                self.imageMan3.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
                self.imageBall3.frame = CGRect(x:-3000, y: -3000, width: 10, height:10)
            })
            UIView.addKeyframeWithRelativeStartTime(0.98, relativeDuration: 0.00000000000000000000001, animations: { () -> Void in
                self.imageMan4.alpha = 1
                self.imageBall4.alpha = 1
                
                ///------------------------------ A FUNCAO DE ANIMACAO 3D FOI CHAMADA AQUI ÓÓÓÓÓÓÓ--------------------------------
                //self.playBall()
            })
            /*UIView.addKeyframeWithRelativeStartTime(0.76, relativeDuration: 0.00000000000000000000001, animations: { () -> Void in
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
            })*/
        }) { (result) -> Void in
            if result {
                self.playBall()
            }
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
