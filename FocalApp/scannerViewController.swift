//
//  scannerViewController.swift
//  FocalApp
//
//  Created by selin acar on 2016-03-16.
//  Copyright © 2016 selin acar. All rights reserved.
//
import AVFoundation
import UIKit

class scannerViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate  {
    
    static let scanner = scannerViewController()
    //var scannedGarments: UICollectionView?
    
    var captureSession: AVCaptureSession!
    var previewLayer: AVCaptureVideoPreviewLayer!
    var outfitName: String?, designerName: String?, made: String?, hours: String?, tops: String?, jackets: String?, bottoms: String?, careContent: String?, fibreContent: String?, image1: String?, image2: String?, image3: String?, image4: String?, video:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(netHex:0xDCB1B0)
        captureSession = AVCaptureSession()
        
        let videoCaptureDevice = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        let videoInput: AVCaptureDeviceInput
        
        do {
            videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            return
        }
        
        if (captureSession.canAddInput(videoInput)) {
            captureSession.addInput(videoInput)
        } else {
            failed();
            return;
        }
        
        let metadataOutput = AVCaptureMetadataOutput()
        
        if (captureSession.canAddOutput(metadataOutput)) {
            captureSession.addOutput(metadataOutput)
            
            metadataOutput.setMetadataObjectsDelegate(self, queue: dispatch_get_main_queue())
            metadataOutput.metadataObjectTypes = [AVMetadataObjectTypeQRCode]
        } else {
            failed()
            return
        }
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession);
        previewLayer.frame = view.layer.bounds;
        previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
        view.layer.addSublayer(previewLayer);
        
        captureSession.startRunning();
    }
    
    func failed() {
        let ac = UIAlertController(title: "Scanning not supported", message: "Your device does not support scanning a code from an item. Please use a device with a camera.", preferredStyle: .Alert)
        ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(ac, animated: true, completion: nil)
        captureSession = nil
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if (captureSession?.running == false) {
            captureSession.startRunning();
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if (captureSession?.running == true) {
            captureSession.stopRunning();
        }
    }
    
    func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, fromConnection connection: AVCaptureConnection!) {
        captureSession.stopRunning()
        var foundcoolstuff = false
        if let metadataObject = metadataObjects.first {
            let readableObject = metadataObject as! AVMetadataMachineReadableCodeObject;
            
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            foundcoolstuff = foundCode(readableObject.stringValue);
        }
        if foundcoolstuff == false {
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    func foundCode(code: String)-> Bool {
        switch code{
        case "MajesticWisdom1":
            print(code)
            outfitName = "Outfit 1"
            designerName = "Majestic Wisdom"
            made = "100% Original"
            hours = "15"
            jackets = ""
            tops = "Women's red contrast jacket.\nRed pleather side planels.\n West African fabric (deep orange/green tie dye pattern), placed on centre front panels and collar.\nTwo-way 20'' gold jacket zipper attached for centre front closure."
            bottoms = "Women's highwaisted shorts.\nWest African fabric (deep orange/green tie dye pattern) used as self.\n 6'' black zipper used for centre back short opening."
            careContent = "Top: Hand wash African material, use damp cloth to wipe pleather. Hand dry.\nBottom: Handwash. Hang dry.\n"
            fibreContent = "Top: African Fabric - 100% cotton (woven), wax resist-dye / Pleather - polyvinylchloride/polyester.\nBottom: African Fabric - 100% cotton (woven), wax resist-dye."
            image1 = "MWOutfit_1-1(FINAL2)"
            image2 = "MWOutfit_1-2(FINAL2)"
            image3 = "MWOutfit_1-3(FINAL2)"
            image4 = "MWOutfit_1-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=xyUIQr0CkuU&feature=youtu.be"
            
        case "MajesticWisdom2":
            outfitName = "Outfit 2"
            designerName = "Majestic Wisdom"
            made = "100% Original"
            hours = "15"
            jackets = ""
            tops = "Women's blue contrast jacket with fringe.\nBlack pleather bodice. \nWest African fabric (ocean blue/black tie dye pattern) yoke on back, front and jacket sleeves.\nBlack fringe trim across the chest.\n Two-way 20'' gold jacket zipper attached for centre front closure.\n"
            bottoms = "Women's high-waisted skirt.\nWest African fabric (ocean blue/black tie dye pattern) used as self.\n6'' black zipper used for centre back short opening.\n"
            careContent = "Top: Hand wash African material, use damp cloth to wipe pleather. Hand dry.\nBottom: Handwash. Hang dry."
            fibreContent = "Top: African Fabric - 100% cotton (woven), wax resist-dye / Pleather - polyvinylchloride/polyester.\nBottom: African Fabric - 100% cotton (woven), wax resist-dye."
            image1 = "MWOutfit_2-1(FINAL2)"
            image2 = "MWOutfit_2-2(FINAL2)"
            image3 = "MWOutfit_2-3(FINAL2)"
            image4 = "MWOutfit_2-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=xyUIQr0CkuU&feature=youtu.be"
            
        case "MajesticWisdom3":
            print(code)
            outfitName = "Outfit 3"
            designerName = "Majestic Wisdom"
            made = "100% Original"
            hours = "20"
            jackets = ""
            tops = "Women's zip-up sleeveless top.\nWest African fabric (deep orange/green tie dye pattern) used as front panel bodice.\nBlack stretch mesh used for front yoke and bodice back.\n9'' gold zipper quarter zipper placed on centre front."
            bottoms = "Women's wrap-around tutu skirt.\nLayered red tulle used as self.\nBlack silk used as waistband."
            careContent = "Top - wash on delicate/hand wash\nTutu - hand wash in warm water; do not rub or ring material. Air dry; do not tumble dry."
            fibreContent = "Top: African Fabric - 100% cotton (woven) / wax resist-dye. Stretch mesh - 82% nylon / 18% spandex.\nBottom: Tulle - 100% nylon. Silk - 80% fibroin / 20% sericin."
            image1 = "MWOutfit_3-1(FINAL2)"
            image2 = "MWOutfit_3-2(FINAL2)"
            image3 = "MWOutfit_3-3(FINAL2)"
            image4 = "MWOutfit_3-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=o4DJi2zzCK8&feature=youtu.be"
        case "AnteMeridiem1":
            print(code)
            outfitName = "Outfit 1"
            designerName = "Ante Meridiem"
            made = "100% Original"
            hours = "60"
            jackets = "Men’s structured translucent blazer\nFully french seamed and binded.\nCentre back seam.\nTwo angled cross over flaps placed on each side of centre front."
            tops = "Men’s draped elongated turtle neck.\nCentre back seam. "
            bottoms = "Men’s asymmetrical pleated pants.\nElastic waistband placed in the back.\nSingle welt pocket placed on the back right hand side, added button closure."
            careContent = "Dry clean only."
            fibreContent = "Jacket: 100% Monofilament Polyester.\nTop: 100% Bamboo Cotton.\nBottom: 97% Cotton / 3% Elastane"
            image1 = "AMOutfit_1-1(FINAL2)"
            image2 = "AMOutfit_1-2(FINAL2)"
            image3 = "AMOutfit_1-3(FINAL2)"
            image4 = "AMOutfit_1-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=-7q09FzqznA&feature=youtu.be"
        case "AnteMeridiem2":
            print(code)
            outfitName = "Outfit 2"
            designerName = "Ante Meridiem"
            made = "100% Original"
            hours = "60"
            jackets = "Men’s cropped kimono jacket.\nLarge stretch ribbing detail added to the neckline. \nTwo large cargo pockets placed on the front.\nZipper placed on the right cargo pocket for additional space.\nCentre back seam detail.\nFully binded."
            tops = "Men’s layered tunic.\nQuarter neck button closure with button extension cover.\nYoke detail placed on the back of the shirt.\nLoose yoke overlay placed on the shirt front.\nPocket welt placed on the left hand side of the tunic,\ntransparent pocket bag shown underneath loose yoke overlay. \nSleeve cuffs and plackets.\nSide seam slits placed vertically up from the hem on either end of the bodice.\nFully french seamed."
            bottoms = "Men’s asymmetrical pleated pants.\nElastic waistband placed in the back.\nSingle welt pocket placed on the back right hand side, added button closure."
            careContent = "Dry clean only."
            fibreContent = "Jacket: 100% Cotton.\nShirt: 100% Cotton and Polyester Blend.\nShirt Pocket Bag: 100% Monofilament Polyester.\nBottom: 100% Swiss Cotton."
            image1 = "AMOutfit_2-1(FINAL2)"
            image2 = "AMOutfit_2-2(FINAL2)"
            image3 = "AMOutfit_2-3(FINAL2)"
            image4 = "AMOutfit_2-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=NNuHxgysqzU&feature=youtu.be"
        case "AnteMeridiem3":
            print(code)
            outfitName = "Outfit 3"
            designerName = "Ante Meridiem"
            made = "100% Original"
            hours = "50"
            jackets = ""
            tops = "Men's oversized cream shirt with boat neckline.\nStylized bodice to sleeve pleats seen on the front of the shirt.\nSide seam slits placed vertically up from the hem on either end of the bodice."
            bottoms = "Beige men’s vent back pant.\nSingle welt pocket placed on the right back of pant.\nStylized seams going down the centre of each back pant leg.\nVents placed on the centre back of each pant leg, from the hem up 11''."
            careContent = "Dry clean only."
            fibreContent = "Top: 100% Swiss Cotton.\nBottom: 100% Wool and Nylon Blend."
            image1 = "AMOutfit_3-1(FINAL2)"
            image2 = "AMOutfit_3-2(FINAL2)"
            image3 = "AMOutfit_3-3(FINAL2)"
            image4 = "AMOutfit_3-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=7GDGbBk7vnM&feature=youtu.be"
            
        case "PablotCollars1":
            print(code)
            outfitName = "Outfit 1"
            designerName = "Pablot Collars"
            made = "Upcycled"
            hours = "2"
            jackets = ""
            tops = "Women's cropped polo.\nUpcyced polo with added patterned collar, placed on shirt back.\nRed Krylon Spray Paint is applied for Pablot logo.\nAdded slits on the bodice hem"
            bottoms = "Women's tennis skirt.\nWrapped scarf woven through slits.\nAcrylic paint splattered."
            careContent = "Gentle wash inside out. Hang dry."
            fibreContent = "Top: 100% Combed Cotton.\nBottom & Scarf: 100% Polyester."
            image1 = "PCOutfit_1-1(FINAL2)"
            image2 = "PCOutfit_1-2(FINAL2)"
            image3 = "PCOutfit_1-3(FINAL2)"
            image4 = "PCOutfit_1-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=-DYvgRg26cs&feature=youtu.be"
            
        case "PablotCollars2":
            print(code)
            outfitName = "Outfit 2"
            designerName = "Pablot Collars"
            made = "Upcycled"
            hours = "2"
            jackets = ""
            tops = "Men's baseball concept polo.\nUpcycled polo with added patterned collar.\nRed Krylton Spray paint is used for Pablot logo.\nEmbroidered details on the bottom left hand of the shirt."
            bottoms = "Men's casual pant.\nDistressed by hand.\nAcrylic paint splattered."
            careContent = "Gentle wash inside out. Hang dry."
            fibreContent = "Top: 100% Combed Cotton\nBottom: 98% Cotton / 2% Elastane."
            image1 = "PCOutfit_2-1(FINAL2)"
            image2 = "PCOutfit_2-2(FINAL2)"
            image3 = "PCOutfit_2-3(FINAL2)"
            image4 = "PCOutfit_2-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=Gq6HVV26MNA&feature=youtu.be"
        case "PablotCollars3":
            print(code)
            outfitName = "Outfit 3"
            designerName = "Pablot Collars"
            made = "Upcycled"
            hours = "2"
            jackets = ""
            tops = "Women's cropped polo.\nUpcyced polo with added patterned collar.\nRed Krylon Spray Paint is applied for the Pablot logo, placed on shirt front."
            bottoms = "Women's pant leggings.\nCustome embroidered patches.\nAcrylic paint splattered."
            careContent = "Gentle wash inside out. Hang dry."
            fibreContent = "Top: 100% Cotton\nBottom: 98% Cotton / 2% Elastane."
            image1 = "PCOutfit_3-1(FINAL2)"
            image2 = "PCOutfit_3-2(FINAL2)"
            image3 = "PCOutfit_3-3(FINAL2)"
            image4 = "PCOutfit_3-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=Kzv0dMRbmIM&feature=youtu.be"
            
        case "Queue1":
            print(code)
            outfitName = "Outfit 1"
            designerName = "Queue"
            made = "Top: Up-cycled. Bottom: 100% Original."
            hours = "32"
            jackets = ""
            tops = "Men's up-cycled black Roopa hoodie.\nOriginally made in Canada.\nHand embroidery detail placed on the back."
            bottoms = "Men's military inspired cargo pants.\nOlive drab organic cotton twill with knee pleats.\nAccented with black organic bamboo cotton panel blocks on calves.\nPatch accordion pockets with exposed zippers.\nPatch front pockets with hand embroidered creme details."
            careContent = "Wash in cold. Gentle cycle. Air dry."
            fibreContent = "Top: 100% Cotton.\nBottom:100% Cotton twill / Bamboo cotton."
            image1 = "QOutfit_1-1(FINAL2)"
            image2 = "QOutfit_1-2(FINAL2)"
            image3 = "QOutfit_1-3(FINAL2)"
            image4 = "QOutfit_1-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=pZRFTm7ghQo&feature=youtu.be"

        case "Queue2":
            print(code)
            outfitName = "Outfit 2"
            designerName = "Queue"
            made = "Top: Up-cycled. Bottom: 100% Original."
            hours = "16"
            jackets = ""
            tops = "Women's up-cycled grey cotton tee.\nEnvironmentally-friendly water-based print."
            bottoms = "Women's military inspired overalls.\nOlive drab organic cotton twill with exposed zipper open.\nBlack organic cotton bamboo panel on lower back.\nExposed zip patch cargo pockets and hand embroidered creme details."
            careContent = "Wash in cold. Gentle cycle. Air dry."
            fibreContent = "Top: 100% Cotton.\nBottom:100% Cotton twill / Bamboo cotton."
            image1 = "QOutfit_2-1(FINAL2)"
            image2 = "QOutfit_2-2(FINAL2)"
            image3 = "QOutfit_2-3(FINAL2)"
            image4 = "QOutfit_2-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=dqLUKsdNpFo&feature=youtu.be"

        case "Queue3":
            print(code)
            outfitName = "Outfit 3"
            designerName = "Queue"
            made = "Top: 100% Original. Bottom: Up-cycled."
            hours = "13"
            jackets = ""
            tops = "Men's pull-over button-down shirt. \nHybrid mix of short-sleeve sweater and a button down dress shirt.\nBlack organic bamboo cotton mandarin collar.\nOrganic bamboo terry fleece in olive green upper.\n100% cotton twill in creme lower.\nAccented with off-set buttons and hand-embroidered loop enclosure.\nOpen sides with hand-embroidered details."
            bottoms = "Men's up-cycled denim jeans.\nDistressed legs with internal pleated patch panels.\n100% cotton twill in olive drab green and creme colors."
            careContent = "Wash in cold. Gentle cycle. Air dry."
            fibreContent = "Top: 100% Cotton twill / Bamboo cotton / Organic bamboo terry fleece.\nBottom: Cotton twill."
            image1 = "QOutfit_3-1(FINAL2)"
            image2 = "QOutfit_3-2(FINAL2)"
            image3 = "QOutfit_3-3(FINAL2)"
            image4 = "QOutfit_3-4(FINAL2)"
            video = "https://www.youtube.com/watch?v=uQRAmUH_4KU&feature=youtu.be"

        default: return false
        }
        //CREATE THE COLLECTIONVIEW CELL
//        GarmentsViewController().addNewOutfit(outfitName!, designer:designerName!, make: made!, hour: hours!, jacket: jackets!, top: tops!, bottom: bottoms!, careContents: careContent!, fibreContents: fibreContent!, img1: image1!, img2: image2!, img3: image3!, img4: image4!)
        
//        scannedGarments?.reloadData()
        

//        ROUTE TO THE DETAIL VIEW
        self.performSegueWithIdentifier("showOutfit", sender: self)
        
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        
        // Define string attributes
        let font1 = UIFont(name: "AvenirNext-Bold", size: 20.0) ?? UIFont.systemFontOfSize(19.0)
        let boldFont = [NSFontAttributeName:font1]
        
        let font2 = UIFont(name: "AvenirNext-Regular", size: 16.0) ?? UIFont.systemFontOfSize(17.0)
        let regFont = [NSFontAttributeName:font2]
        
        // Create a string that will be our paragraph
        let para = NSMutableAttributedString()
        
        
        var JACKET:NSAttributedString?
        var JACKET1:NSAttributedString?
        
        
        // Create locally formatted strings
        let MAKE = NSAttributedString(string: "MAKE ", attributes:boldFont)
        let MAKE1 = NSAttributedString(string: self.made!+"\n", attributes:regFont)
        
        let HOURS = NSAttributedString(string: "HOURS ", attributes: boldFont)
        let HOURS1 = NSAttributedString(string: self.hours!+"\n", attributes:regFont)
        
        
        if !self.jackets!.isEmpty{
            JACKET = NSAttributedString(string: "JACKET ", attributes:boldFont)
            JACKET1 = NSAttributedString(string: self.jackets!+"\n", attributes:regFont)
        }
        
        let TOP = NSAttributedString(string: "TOP ", attributes:boldFont)
        let TOP1 = NSAttributedString(string: self.tops!+"\n", attributes:regFont)
        
        let BOTTOM = NSAttributedString(string: "BOTTOM ", attributes:boldFont)
        let BOTTOM1 = NSAttributedString(string: self.bottoms!+"\n", attributes:regFont)
        
        let CARECONTENT = NSAttributedString(string: "CARE CONTENT ", attributes:boldFont)
        let CARECONTENT1 = NSAttributedString(string: self.careContent!+"\n", attributes:regFont)
        
        let FIBRECONTENT = NSAttributedString(string: "FIBRE CONTENT ", attributes:boldFont)
        let FIBRECONTENT1 = NSAttributedString(string: self.fibreContent!+"\n", attributes:regFont)
        
        let VID = NSAttributedString(string: "VIDEO ", attributes:boldFont)
        let VID1 = NSAttributedString(string: self.video!+"\n", attributes:regFont)
        
        para.appendAttributedString(MAKE)
        para.appendAttributedString(MAKE1)
        para.appendAttributedString(HOURS)
        para.appendAttributedString(HOURS1)
        if !self.jackets!.isEmpty{
            para.appendAttributedString(JACKET!)
            para.appendAttributedString(JACKET1!)
        }
        para.appendAttributedString(TOP)
        para.appendAttributedString(TOP1)
        para.appendAttributedString(BOTTOM)
        para.appendAttributedString(BOTTOM1)
        para.appendAttributedString(CARECONTENT)
        para.appendAttributedString(CARECONTENT1)
        para.appendAttributedString(FIBRECONTENT)
        para.appendAttributedString(FIBRECONTENT1)
        para.appendAttributedString(VID)
        para.appendAttributedString(VID1)
        
        let vc = segue.destinationViewController as! OutfitViewController
        vc.deets = para
        
        if !self.image1!.isEmpty && !self.image2!.isEmpty && !self.image3!.isEmpty && !self.image4!.isEmpty{
            
            vc.image = [self.image1!, self.image2!, self.image3!, self.image4!]
        }
//set image of view controller as image of the collectionview item
//        let outfitGif:UIImageView!
//        outfitGif!.animationImages = ImagesArray
//        outfitGif!.animationDuration = 2.0
//        outfitGif!.startAnimating()
//        vc.image = [self.image1!, self.image2!, self.image3!, self.image4!]
        
        //set title
        //vc.title = self.designerName!+self.outfitName!
//        navigationItem.title = self.designerName!+self.outfitName!
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
