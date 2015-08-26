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
    
    @IBOutlet weak var imageView: UIImageView!
    
    var photoName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        historyButton.layer.cornerRadius = CGFloat(6.0)
        howToPlayButton.layer.cornerRadius = CGFloat(6.0)
        rulesButton.layer.cornerRadius = CGFloat(6.0)
        
        historyButton.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        historyButton.layer.borderWidth = CGFloat(1.5)
        
        howToPlayButton.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        howToPlayButton.layer.borderWidth = CGFloat(1.5)
        
        rulesButton.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        rulesButton.layer.borderWidth = CGFloat(1.5)
        
        imageView.image = UIImage(named: photoName)
        imageView.layer.cornerRadius = CGFloat(25.0)
        imageView.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func historyClicked(sender: UIButton) {
        performSegueWithIdentifier("history", sender: photoName)
    }
    
    @IBAction func rulesClicked(sender: UIButton) {
        performSegueWithIdentifier("rules", sender: photoName)
    }
    
    @IBAction func howToPlayClicked(sender: UIButton) {
        performSegueWithIdentifier("howtoplay", sender: photoName)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "history" {
            
            let historyViewController = segue.destinationViewController as! HistoryViewController
            historyViewController.photoName = sender as! String
            
        }
        else if segue.identifier == "rules" {
            let rulesViewController = segue.destinationViewController as! RulesViewController
            rulesViewController.photoName = sender as! String
        }
        else if segue.identifier == "howtoplay" {
            let howToPlayViewController = segue.destinationViewController as! HowToPlayViewController
            howToPlayViewController.photoName = sender as! String
        }

        
    }


}
