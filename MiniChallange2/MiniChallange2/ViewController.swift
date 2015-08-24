//
//  ViewController.swift
//  MiniChallange2
//
//  Created by Lucas Gabriel Silvério de Freitas on 18/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println(AccessJSON.accessHistory("Badminton", type: "History"))
        println(AccessJSON.acessArray("Badminton", type:"Curiosities")[5])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

