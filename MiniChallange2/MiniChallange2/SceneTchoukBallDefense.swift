//
//  SceneTchoukBallDefense.swift
//  MiniChallange2
//
//  Created by Giuliana Salgado on 27/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.



import UIKit

class SceneTchoukBallDefense: UIViewController {
    
    @IBOutlet weak var player1image: UIImageView!
    @IBOutlet weak var player2image: UIImageView!
    @IBOutlet weak var ballImage: UIImageView!
    @IBOutlet weak var imageQuadra: UIImageView!
    
    let imageNamedPlayer1 = "simple_man5"
    let imageNamedPlayer2 = "simple_man3"
    let imageNamedball = "ball"
    let imageNamedQuadra = "fundo-tchoukball"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageP1 = UIImage(named:imageNamedPlayer1)
        player1image.image = imageP1
        
        let imageP2 = UIImage(named:imageNamedPlayer2)
        player2image.image = imageP2
        
        let imageB = UIImage(named:imageNamedball)
        ballImage.image = imageB
       
        let imageQ = UIImage(named:imageNamedQuadra)
        imageQuadra.image = imageQ
        
        self.imageQuadra.layer.zPosition = -10

        
        
    }
    
    
    @IBAction func start(sender: AnyObject) {
        
        passe()
    }
 
    
    func passe()
    {
        var transladeAndScaleTransform = ballImage.layer.transform
        
        //Para fazer a peteca ir para o outro lado da rede.
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, -20, -250, 0)
        rotateBallImage(transladeAndScaleTransform)
        self.ballImage.layer.zPosition = 2
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, -50, -10, 0)
        rotateBallImage(transladeAndScaleTransform)
        // self.imagePeteca.layer.zPosition = -2
        
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, -70, 10, 0)
        rotateBallImage(transladeAndScaleTransform)
        transladeAndScaleTransform = CATransform3DTranslate(transladeAndScaleTransform, -10, 150, 0)
        
        
        
        transladeAndScaleTransform = CATransform3DScale(transladeAndScaleTransform, 0.5, 0.5, 1)
        
        rotateBallImage(transladeAndScaleTransform)
        
    }
   
    

    
    func rotateBallImage(transform:CATransform3D) {
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.duration = 2.0
        animation.toValue = NSValue(CATransform3D: transform)
        
        self.ballImage.layer.addAnimation(animation, forKey: nil)
        
        
    }

    
    

}