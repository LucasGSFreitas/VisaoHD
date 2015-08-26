//
//  SportsViewController.swift
//  MiniChallange2
//
//  Created by guilherme babugia on 24/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class SportsViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private let reuseIdentifier = "sportsCell"
    private let sectionInsets = UIEdgeInsets(top: 60.0, left: 20, bottom: 60.0, right: 20.0)
    
    let photos = ["badminton.png","tchoukball.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "sportsClicked" )
        {
            
            let sportsClickedViewController = segue.destinationViewController as! SportsClickedViewController
            
            sportsClickedViewController.photoName = sender as! String
            
            
        }
    }

}


extension SportsViewController : UICollectionViewDataSource {
    
    //1
     func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //2
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.count
    }
    
    //3
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        //1
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! SportsCollectionViewCell
        //2
        let sportPhoto = photos[indexPath.row]
        //3
        let photo = UIImage(named: sportPhoto)
        cell.imageView.image = photo
        
        cell.layer.borderWidth = CGFloat(1.5)
        
        cell.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).CGColor
        
        cell.layer.borderColor = UIColor.grayColor().CGColor
        
        cell.layer.cornerRadius = CGFloat(5)
        
        cell.backgroundColor = UIColor(red: 233, green: 235, blue: 235, alpha: 100)

        
        if indexPath.row == 0 {
            cell.LabelName.text = "Badminton"
        }
        else if indexPath.row == 1 {
            cell.LabelName.text = "Tchoukball"
        }
        
        return cell
    }
    
   
}

extension SportsViewController : UICollectionViewDelegateFlowLayout {
    //1
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            
            return CGSize(width: 130, height: 130)
    }
    
    //3
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        
        var photoName = photos[indexPath.row]
        
        performSegueWithIdentifier("sportsClicked", sender: photoName)
    }
}

