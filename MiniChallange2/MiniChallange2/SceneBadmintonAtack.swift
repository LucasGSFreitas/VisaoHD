//
//  SceneBadmintonAtack.swift
//  MiniChallange2
//
//  Created by Giuliana Salgado on 27/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class SceneBadmintonAtack: UIViewController {
    
    let eyePosition = CGFloat(600.0)
    var aux = 0
    
    @IBOutlet weak var imageRede: UIImageView!
    @IBOutlet weak var imageQuadra: UIImageView!
    @IBOutlet weak var imageRaquete: UIImageView!
    @IBOutlet weak var imagePeteca: UIImageView!
    
    let imageNamedQuadra = "quadra_B.jpg"
    let imageNamedPeteca = "petecaB"
    let imageNamedRaquete = "raqueteBadminton"
    let imageNamedRede = "redeB"
    
    
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
    
    
    func saqueRaquete()
    {
        //Make rotation over all transformations already done
        var rotationAndPerspectiveTransform = imageRaquete.layer.transform
        
        rotationAndPerspectiveTransform.m34 = 1.0 / eyePosition
        
        //Para rotacionar a raquete:
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.2), CGFloat(0.0), CGFloat(-1.0), CGFloat(0.0));
        
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * (0.4)), CGFloat(-1.0), CGFloat(0.0), CGFloat(0.0));
        
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.3), CGFloat(0.0), CGFloat(0.0), CGFloat(1.0));
        
        rotateRaqueteImage(rotationAndPerspectiveTransform)
        //0.3 no z para a raquete ficar reta
        
    }
    
    
    func saqueRaqueParte2()
    {
        //Make rotation over all transformations already done
        var rotationAndPerspectiveTransform = imageRaquete.layer.transform
        
        rotationAndPerspectiveTransform.m34 = 1.0 / eyePosition
        
        //Para rotacionar a raquete:
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.1), CGFloat(0.0), CGFloat(1.0), CGFloat(0.0));
        
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * (0.1)), CGFloat(1.0), CGFloat(0.0), CGFloat(0.0));
        
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, CGFloat(M_PI * 0.3), CGFloat(0.0), CGFloat(0.0), CGFloat(1.0));
        
        rotateRaqueteImage(rotationAndPerspectiveTransform)
        
        
        
    }
    
    
    func saquePetecaParte1()
    {
        var transladeAndScaleTransform = imagePeteca.layer.transform
        
        //Para fazer a peteca ir para o outro lado da rede.
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 0, -200, 0)
        
        rotatePetecaImage(transladeAndScaleTransform)
        
        self.saqueRaquete()
        
    }
    
    func saquePetecaParte2()
    {
        var transladeAndScaleTransform = imagePeteca.layer.transform
        
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 0, -45, 0)
        // transladeAndScaleTransform = CATransform3DScale(transladeAndScaleTransform, 0.5, 0.5, 1)
        
        rotatePetecaImageParte3(transladeAndScaleTransform)
    }
    
    func saquePetecaParte3()
    {
        
        var transladeAndScaleTransform = imagePeteca.layer.transform
        
        //Para fazer a peteca ir para o outro lado da rede.
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 50, -155, 0)
        rotatePetecaImage(transladeAndScaleTransform)
        self.imagePeteca.layer.zPosition = 2
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 50, -10, 0)
        rotatePetecaImage(transladeAndScaleTransform)
        
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 50, 10, 0)
        rotatePetecaImage(transladeAndScaleTransform)
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, 10, 100, 0)
        
        
        
        transladeAndScaleTransform = CATransform3DScale(transladeAndScaleTransform, 0.5, 0.5, 1)
        
        rotatePetecaImage(transladeAndScaleTransform)
        
    }
    
    
    @IBAction func startButton(sender: UIButton) {
        
        self.saquePetecaParte1()
        
    }
    
    override func animationDidStop(anim: CAAnimation!, finished flag: Bool)
    {
        if(anim == "saque1")
        {
            if aux == 0 {
                self.saqueRaqueParte2()
                self.saquePetecaParte2()
            }
            aux == 1
            
        }
        else if anim == "Parte3"
        {
            if aux == 1
            {
                self.saquePetecaParte3()
            }
            aux = 2
            
        }
    }
    
    
    func rotateRaqueteImage(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 0.9
        animation.toValue = NSValue(CATransform3D: transform)
        animation.delegate = self
        //animation.accessibilityValue = "saque1"
        
        self.imageQuadra.layer.zPosition = -1000
        self.imageRede.layer.zPosition = -100
        self.imagePeteca.layer.zPosition = -100
        
        self.imageRaquete.layer.addAnimation(animation, forKey: "saque1")
        
        
    }
    
    func rotatePetecaImage(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 0.8
        animation.toValue = NSValue(CATransform3D: transform)
        animation.delegate = self
       // animation.toValue = "saque1"
        
        self.imageQuadra.layer.zPosition = -1000
        self.imageRede.layer.zPosition = 100
        
        
        self.imagePeteca.layer.addAnimation(animation, forKey: "saque1")
        
        
    }
    
    func rotatePetecaImageParte3(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 0.8
        animation.toValue = NSValue(CATransform3D: transform)
        animation.delegate = self
       // animation.accessibilityValue = "Parte3"
        
        self.imageQuadra.layer.zPosition = -1000
        self.imageRede.layer.zPosition = 100
        
        
        self.imagePeteca.layer.addAnimation(animation, forKey: "Parte3")
        
        
    }
    
    
}