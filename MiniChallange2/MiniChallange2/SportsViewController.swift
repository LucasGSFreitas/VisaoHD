//
//  SportsViewController.swift
//  MiniChallange2
//
//  Created by guilherme babugia on 24/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import UIKit

class SportsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private let reuseIdentifier = "sportsCell"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 35.0, bottom: 50.0, right: 20.0)
    
    let photos = ["badminton.png","tchoukball.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        //cell.backgroundColor = UIColor.blackColor()
        //3
        let photo = UIImage(named: sportPhoto)
        cell.imageView.image = photo
        
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
//    func collectionView(collectionView: UICollectionView,
//        layout collectionViewLayout: UICollectionViewLayout,
//        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//            
//            let flickrPhoto =  photoForIndexPath(indexPath)
//            //2
//            if var size = flickrPhoto.thumbnail?.size {
//                size.width += 10
//                size.height += 10
//                return size
//            }
//            return CGSize(width: 100, height: 100)
//    }
    
    //3
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
    
     func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        println(indexPath.row)
        
        
    }
}

