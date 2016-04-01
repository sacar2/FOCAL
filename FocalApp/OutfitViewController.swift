//
//  OutfitViewController.swift
//  FocalApp
//
//  Created by selin acar on 2016-03-30.
//  Copyright © 2016 selin acar. All rights reserved.
//

import UIKit

class OutfitViewController: UIViewController {

    @IBOutlet weak var outfitImage: UIImageView!
    @IBOutlet weak var outfitDetail: UITextView!
    
    var image = [String]()
    var deets = NSAttributedString()
    var head = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        outfitImage.image = image
        
        let imagesArray:[UIImage] = [UIImage(named:"\(self.image[0])")!, UIImage(named:"\(self.image[1])")!, UIImage(named:"\(self.image[2])")!, UIImage(named:"\(self.image[3])")!]
        
        outfitImage.animationImages = imagesArray
        outfitImage.animationDuration = 2.0
        outfitImage.startAnimating()
        self.title = self.head
        outfitDetail.attributedText = self.deets
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
