//
//  GameScene.swift
//  MiniChallange2
//
//  Created by Giuliana Salgado on 19/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class SceneBadminton: UIViewController {
    
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

        
    }
    
    

    func saque()
    {
        
        
    }
    
    
    
    
}

