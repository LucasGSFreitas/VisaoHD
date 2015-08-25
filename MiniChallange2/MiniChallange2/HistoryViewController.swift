//
//  HistoryViewController.swift
//  MiniChallange2
//
//  Created by guilherme babugia on 24/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    
    @IBOutlet weak var textView: UITextView!
    var type = String()
    var sport = String()
    var history = String()
    override func viewDidLoad() {
        sport = "Badminton"
        type = "History"
        history = AccessJSON.accessHistory(self.sport, type: self.type)
        
        self.textView.text = self.history
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
