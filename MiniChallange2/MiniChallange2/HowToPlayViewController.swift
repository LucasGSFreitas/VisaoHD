//
//  HowToPlayViewController.swift
//  MiniChallange2
//
//  Created by guilherme babugia on 26/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class HowToPlayViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var defenseButton: UIButton!
    
    @IBOutlet weak var atackButton: UIButton!
    
    @IBOutlet weak var demoButton: UIButton!
    
    var photoName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        defenseButton.layer.cornerRadius = CGFloat(6.0)
        defenseButton.setTitle("Defense", forState: .Normal)
        defenseButton.titleLabel!.font = UIFont(name: "Georgia", size: 21.0)
        defenseButton.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        defenseButton.layer.borderWidth = CGFloat(1.5)
        
        atackButton.layer.cornerRadius = CGFloat(6.0)
        atackButton.setTitle("Atack", forState: .Normal)
        atackButton.titleLabel!.font = UIFont(name: "Georgia", size: 21.0)
        atackButton.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        atackButton.layer.borderWidth = CGFloat(1.5)

        demoButton.layer.cornerRadius = CGFloat(6.0)
        demoButton.setTitle("Demo", forState: .Normal)
        demoButton.titleLabel!.font = UIFont(name: "Georgia", size: 21.0)
        demoButton.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        demoButton.layer.borderWidth = CGFloat(1.5)
        
        imageView.image = UIImage(named: photoName)
        imageView.layer.cornerRadius = CGFloat(25.0)
        imageView.layer.masksToBounds = true


    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defenseButton(sender: UIButton) {
        
        if photoName == "badminton.png" {
            performSegueWithIdentifier("badmintonAnimation", sender: nil)
        }
        else if photoName == "tchoukball.png" {
            performSegueWithIdentifier("TchoukBallDefense", sender: nil)
        }
    }
    
    @IBAction func atackButton(sender: UIButton) {
        if photoName == "badminton.png" {
            performSegueWithIdentifier("BadmintonAtack", sender: nil)
        }
        else if photoName == "tchoukball.png" {
            performSegueWithIdentifier("tchoukballAtackAnimation", sender: nil)
        }
    }
    
    @IBAction func demoButton(sender: UIButton) {
        if photoName == "badminton.png" {
            performSegueWithIdentifier("badmintonAnimation", sender: nil)
        }
        else if photoName == "tchoukball.png" {
            performSegueWithIdentifier("tchoukballAnimation", sender: nil)
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
       
    }

    
    
    
//        let idSelected = (movieList[indexPath.row] as! Movie).identification
//        self.performSegueWithIdentifier("showMovViewController", sender: idSelected)
    

//        if(segue.identifier == "showMovViewController" )
//        {
//            let movViewController : MovViewController = segue.destinationViewController as! MovViewController
//            movViewController.identification = (sender as! String)
//        }
        
    

    

}
