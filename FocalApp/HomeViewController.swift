//
//  FirstViewController.swift
//  FocalApp
//
//  Created by selin acar on 2016-03-05.
//  Copyright © 2016 selin acar. All rights reserved.
//

import UIKit
import APECountdownView

class HomeViewController: UIViewController {

    @IBOutlet weak var countdownView: CountdownView!
    @IBOutlet weak var promo: UIImageView!
    let JImagesArray:[UIImage] = [UIImage(named:"abt3.png")!, UIImage(named:"abt2.png")!, UIImage(named:"abt1.png")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(UIFont.familyNames())

        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(netHex:0xDCB1B0)
        self.title = "FOCAL"
        setupTopLabel()
        setupcountdown()

        self.promo.animationImages = self.JImagesArray
        self.promo.animationDuration = 1.5
    }

    
    func setupTopLabel(){
        let imageSize = CGSize(width: UIScreen.mainScreen().bounds.width, height: 100)
        let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: imageSize))
        self.view.addSubview(imageView)
        let image = drawCustomImage(imageSize)
        imageView.image = image
        let label = setupLabel()
        self.view.addSubview(label)
    }
    
    
    func drawCustomImage(size: CGSize) -> UIImage {
        // Setup context
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 512, height: 100), false, 0)
        let context = UIGraphicsGetCurrentContext()
        let rectangle = CGRect(x: 0, y: 0, width: 512, height: 100)
        
        CGContextSetFillColorWithColor(context, UIColor(netHex:0xEDECEC).CGColor)
        
        CGContextAddRect(context, rectangle)
        CGContextDrawPath(context, .FillStroke)
        
        //create image from context
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
    
    func setupLabel()->UILabel{
        let label = UILabel(frame: CGRectMake(0, 100, 300, 80))
        label.center = CGPointMake(UIScreen.mainScreen().bounds.width/2, 70)
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont(name: "DINCondensed-Bold", size: 67)
        
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "focalHead.png")
        let attachmentString = NSAttributedString(attachment: attachment)
        let myString = NSMutableAttributedString(string: "FOC")
        myString.appendAttributedString(attachmentString)
        let L = NSMutableAttributedString(string: "L")
        myString.appendAttributedString(L)

        label.attributedText = myString
        label.textAlignment = NSTextAlignment.Center

        
        return label
    }
    
    
    func setupcountdown(){
       
      //  countdownView.size = CGSize(width: 50, height: 70)
      //  countdownView.groupSpace = -3
      //  countdownView.sectionSpace = 3
        countdownView.gradientColor1 = UIColor(red: 0.290, green: 0.290, blue: 0.290, alpha: 0.000)
        countdownView.gradientColor2 = UIColor(red: 0.153, green: 0.153, blue: 0.153, alpha: 0.000)
        countdownView.gradientColor3 = UIColor(red: 0.071, green: 0.071, blue: 0.071, alpha: 0.000)
        countdownView.gradientColor4 = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 0.000)
        countdownView.blockFont = UIFont(name: "Digital System", size: 60)!
        countdownView.blockFontColor = UIColor.blackColor()
        countdownView.titleFont = UIFont(name: "Avenir Next Condensed", size: 20)!
        countdownView.titleFontColor = UIColor(netHex:0xAD6464)
        
        
        // SET DUE DATE
        let showDate = NSDateComponents()
        showDate.year = 2016
        showDate.month = 4
        showDate.day = 7
        showDate.hour = 19
        showDate.minute = 00
        showDate.second = 00
        let focalShowDate = NSCalendar.currentCalendar().dateFromComponents(showDate)!
        
        countdownView.startCountdown(focalShowDate, onCompleted: { _ in
            print("Countdown completed!")
            

            self.countdownView.hidden = true
            
            
            //********************************************************
            //  IMPLEMENT CODE FOR WHEN TIMER IS OVER!!!
            //********************************************************
            
        })
            
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

