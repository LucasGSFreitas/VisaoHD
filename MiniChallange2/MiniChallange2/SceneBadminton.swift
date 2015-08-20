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
    
    let imageNamedPeteca = "petecaB"
    let imageNamedRaquete = "raqueteBadminton"

    @IBOutlet weak var imageRaquete: UIImageView!
    @IBOutlet weak var imagePeteca: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageP = UIImage(named:imageNamedPeteca)
        imagePeteca.image = imageP
        
        let imageR = UIImage(named:imageNamedRaquete)
        imageRaquete.image = imageR

        saque()
        
        
    }
    
    

    func saque()
    {
        //Make rotation over all transformations already done
        var rotationAndPerspectiveTransform = imageRaquete.layer.transform
        
        //Create the perspective effect. The m34 parameter changes the distance from
        //the layer to the projection plane.
        //Reference: https://en.wikipedia.org/wiki/3D_projection#Perspective_projection
        rotationAndPerspectiveTransform.m34 = -1.0 / eyePosition
        
        if (!turn) {
            
            rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.3), CGFloat(0.0), CGFloat(-1.0), CGFloat(0.0));

            rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.4), CGFloat(-1.0), CGFloat(-1.0), CGFloat(0.0));
            
            rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.2), CGFloat(-1.0), CGFloat(0.0), CGFloat(-1.0));

            
        } else {
            rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(0.0), CGFloat(0.0), CGFloat(0.0), CGFloat(0.0));
        }
        
//        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.3), CGFloat(0.0), CGFloat(-1.0), CGFloat(0.0));
      rotateTopImage(rotationAndPerspectiveTransform)
        
   //     turn = !turn
        
    }
    
    func rotateTopImage(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 1.0
        animation.toValue = NSValue(CATransform3D: transform)
        
        self.imageRaquete.layer.addAnimation(animation, forKey: nil)
        
        
    }

    
    
    
    
}

