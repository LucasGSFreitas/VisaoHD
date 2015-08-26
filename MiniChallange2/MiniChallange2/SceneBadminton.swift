//
//  GameScene.swift
//  MiniChallange2
//
//  Created by Giuliana Salgado on 19/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class SceneBadminton: UIViewController {
    
    let turn:Bool = false
    let eyePosition = CGFloat(600.0)
    
    let imageNamedQuadra = "quadra_B.jpg"
    let imageNamedPeteca = "petecaB"
    let imageNamedRaquete = "raqueteBadminton"
    let imageNamedRede = "redeB"

    @IBOutlet weak var imageQuadra: UIImageView!
    @IBOutlet weak var imageRede: UIImageView!
    @IBOutlet weak var imageRaquete: UIImageView!
    @IBOutlet weak var imagePeteca: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageP = UIImage(named:imageNamedPeteca)
        imagePeteca.image = imageP
        
        let imageR = UIImage(named:imageNamedRaquete)
        imageRaquete.image = imageR
        
        let imageRed = UIImage(named:imageNamedRede)
        imageRede.image = imageRed

        let imageQ = UIImage(named:imageNamedQuadra)
        imageQuadra.image = imageQ
    
        
 
        
    }
    
    
    @IBAction func Start(sender: AnyObject) {
        
        self.saqueRaquete()
        
    }
    
  

    func saqueRaquete()
    {
        //Make rotation over all transformations already done
        var rotationAndPerspectiveTransform = imageRaquete.layer.transform
        
        
        
        //Reference: https://en.wikipedia.org/wiki/3D_projection#Perspective_projection
        rotationAndPerspectiveTransform.m34 = 1.0 / eyePosition
        
        //Para rotacionar a raquete:
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.55), CGFloat(0.0), CGFloat(-1.0), CGFloat(0.0));
        
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * (0.4)), CGFloat(-1.0), CGFloat(0.0), CGFloat(0.0));
        
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.2), CGFloat(0.0), CGFloat(0.0), CGFloat(-1.0));
        
        rotateRaqueteImage(rotationAndPerspectiveTransform)
        
        
    }
    
   func saquePeteca()
    {
        var transladeAndScaleTransform = imagePeteca.layer.transform
    
            //Para fazer a peteca ir para o outro lado da rede.
    
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 20, -250, 0)
         rotatePetecaImage(transladeAndScaleTransform)
        self.imagePeteca.layer.zPosition = 2

        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 50, -10, 0)
        rotatePetecaImage(transladeAndScaleTransform)
       // self.imagePeteca.layer.zPosition = -2

        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 70, 10, 0)
         rotatePetecaImage(transladeAndScaleTransform)
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 10, 160, 0)
        

        
        transladeAndScaleTransform = CATransform3DScale(transladeAndScaleTransform, 0.5, 0.5, 1)
        
        rotatePetecaImage(transladeAndScaleTransform)

    }
    
    
    override func animationDidStop(anim: CAAnimation!, finished flag: Bool)
    {
        self.saquePeteca()
    }

    
    func rotateRaqueteImage(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 1.0
        animation.toValue = NSValue(CATransform3D: transform)
        animation.delegate = self
        
        self.imageQuadra.layer.zPosition = -1000
        
        self.imageRaquete.layer.addAnimation(animation, forKey: nil)
        
        
    }
    
    func rotatePetecaImage(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 2.0
        animation.toValue = NSValue(CATransform3D: transform)
        
        self.imageQuadra.layer.zPosition = -1000

        self.imagePeteca.layer.addAnimation(animation, forKey: nil)
        
        
    }

    
    
    
    
}

