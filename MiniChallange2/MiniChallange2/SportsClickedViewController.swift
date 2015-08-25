//
//  SportsClickedViewController.swift
//  MiniChallange2
//
//  Created by guilherme babugia on 25/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class SportsClickedViewController: UIViewController {

    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var howToPlayButton: UIButton!
    @IBOutlet weak var rulesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        historyButton.layer.cornerRadius = CGFloat(6.0)
        howToPlayButton.layer.cornerRadius = CGFloat(6.0)
        rulesButton.layer.cornerRadius = CGFloat(6.0)
        
        // MUDAR COR DA BORDA ( VER COMO PASSAR DE UICOLOR PARA CGCOLOR) 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
