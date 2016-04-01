//
//  SecondViewController.swift
//  FocalApp
//
//  Created by selin acar on 2016-03-05.
//  Copyright © 2016 selin acar. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var topblock: UIImageView!
    @IBOutlet weak var HelenImg: UIImageView!
    @IBOutlet weak var JenniferImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(netHex:0xDCB1B0)
        self.title = "ABOUT"
        fillPortraits()
//        fillThankYous()
    }
    func fillPortraits(){

        let HImagesArray:[UIImage] = [UIImage(named:"HelenSaygan1.png")!, UIImage(named:"HelenSaygan2.png")!]
        
        HelenImg.animationImages = HImagesArray
        HelenImg.animationDuration = 1.5
        HelenImg.startAnimating()
        
        let JImagesArray:[UIImage] = [UIImage(named:"JenniferBonnell1.png")!, UIImage(named:"JenniferBonnell2.png")!]
        JenniferImg.animationImages = JImagesArray
        JenniferImg.animationDuration = 1.5
        JenniferImg.startAnimating()    
//        HelenImg.image = UIImage(named: "HelenSaygan1.png")
//        JenniferImg.image = UIImage(named: "JenniferBonnell1.png")

    }
    
//    func fillThankYous(){
//        // Define string attributes
//        let redColor = UIColor(netHex: 0xAD6464)
//        let redFont = [NSStrokeColorAttributeName:redColor]
//        
////        let font2 = UIFont(name: "AvenirNext-Regular", size: 13.0) ?? UIFont.systemFontOfSize(13.0)
////        let regFont = [NSFontAttributeName:font2]
//        
//        // Create a string that will be our paragraph
//        let para = NSMutableAttributedString()
//        
//        // Create locally formatted strings
//
//        let Q1 = NSAttributedString(string: "Ante Meridiem.")
//        let A1 = NSAttributedString(string: "Shane Goucher\n", attributes:redFont)
//        let A1_2 = NSAttributedString(string: "Brandon Griffith\n", attributes:redFont)
//        let A1_3 = NSAttributedString(string: "Faizan Ali\n", attributes:redFont)
//        
////        let Q2 = NSAttributedString(string: "What first sparked your interest in the fashion industry?\n")
////        let A2 = NSAttributedString(string: "As a child, I always used to do little fashion illustrations, but I could never sew. So I would go as far as my imagination could go with my designs. Then in High School, I took fashion, and unfortunately I failed. It kind of discouraged me in continuing. Just the year before last year I launched screen printed tees and now that I've learned how to sew, I'm just building from there.\n\n", attributes: redFont)
////        
////        let Q3 = NSAttributedString(string: "FOCAL has an involvement of technology in fashion. How do you think that technology and social media affects fashion in both a negative and positive way?\n")
////        let A3 = NSAttributedString(string: "Speaking about the positive impact it would have, in terms of promoting and highlighting, if you're at a fashion show and people are using their phones, tweeting, whatever they're doing, it gives a lot of exposure to designers and the industry. The negative, it takes away from the actual focus on the clothes. People are looking to get likes and views based on their post, so it can take away from the actual purpose of the show.\n\n", attributes:redFont)
////        
////        let Q4 = NSAttributedString(string: "How would you describe your design aesthetic?\n")
////        let A4 = NSAttributedString(string: "It's very fun, very afro-centric mixed with a blend of hip-hop and black culture. I try and take elements from each of those. I also think it pushes beyond the traditional African wear, and plays around with different cuts and designs.\n\n", attributes:redFont)
////        
////        let Q5 = NSAttributedString(string: "How does your personal style influence your creations?\n")
////        let A5 = NSAttributedString(string: "I'd like to say yes, but I would say no because I'm always wearing black. I'm always wearing dark colours. I live through the clothes. I feel that I am very laid back when people see me and interact with me. But I feel that inside I have a lot of energy, I'm just too shy to let it out. I let that out through the designs that I create. I also feel that as i learned to sew, and as I build and grow as a designer, I could really challenge myself and create stuff that I wanna make. I have ideas in my mind, but getting it out there and actually creating it is another thing.\n\n", attributes:redFont)
////        
////        let Q6 = NSAttributedString(string: "Can you describe your creative process?\n")
////        let A6 = NSAttributedString(string: "I start with one, and then it gets thrown out the window. I'll sketch a design that I have in mind, and when I see the fabric, the fabric inspires me more. The fabric and the person that's wearing what I'm going to create; I think that shapes the final outcome of the design. It usually starts off planned and then becomes a whole different thing.\n\n", attributes:redFont)
////        
////        let Q7 = NSAttributedString(string: "What inspired you to create this collection for the show?\n")
////        let A7 = NSAttributedString(string: "Being asked to do the show inspired me to start thinking about what I wanted to do. I have a brother that lives in Africa, and he sent fabrics. When I saw them, I said to myself'No! I have to use this!' For this line specifically, it's more feminine than the last line. There are 3 female models I'll be using, and I just want to do something that is sophisticated but also a bit edgy. But I'll see how that turns out.\n\n", attributes:redFont)
////        
////        let Q8 = NSAttributedString(string: "What's your favourite piece in the collection and what makes that piece special?\n")
////        let A8 = NSAttributedString(string: "Since I haven't finished the first one, I'm not sure how it's going to turn out. But so far, it's the first piece I've been putting together; a jacket and high-waisted shorts. It's my favourite because I love the colour red, and for this collection specifically I used a blend of pleather with West African fabrics. The African fabrics are tie-dyed, so it's the way that they both blend very well with each other; it's vibrant and fun. I can see it being something that's worn in the summer.\n\n", attributes:redFont)
////        
////        let Q9 = NSAttributedString(string: "Tell me about the first look, and the inspiration for that compared to the others.\n")
////        let A9 = NSAttributedString(string: "It was supposed to be a dress, and it didn't really turn out as a dress. I didn't even use the material that I was supposed to use! But the inspiration behind it, was once I figured out which pattern pieces I wanted, I looked at it and I was just wanting to play around with it. I wanted to to play with the fabrics as well as the design.\n\n", attributes:redFont)
////        
////        let Q10 = NSAttributedString(string: "Tell me about your second piece and the inspiration behind that one.\n")
////        let A10 = NSAttributedString(string: "The second piece was kind of an extension of the third piece. The pleather and West African fabric as well. This one is more feminine, a high-waisted skirt with a jacket. This time I put fringe trim attached onto the jacket. You can see that they're connected in some way; the first piece really inspired the second.\n\n", attributes:redFont)
////        
////        let Q11 = NSAttributedString(string: "And how about the third?\n")
////        let A11 = NSAttributedString(string: "The third, I'm still thinking. I really want to play around with this one. To still connect it somehow with the fabrics that I use, but I think I want to surprise myself.\n\n", attributes:redFont)
////        
////        let Q12 = NSAttributedString(string: "How have you grown as an artist from creating your first line, or your first creations, to where you are now?\n")
////        let A12 = NSAttributedString(string: "I've grown because when I first started sewing, I actually didn't really know what I was doing. Some of the designs that I did just happened out of a mistake. I would start one thing, and it would be too large. I would play around with it, and when I started seeing that people were complimenting something that was a mistake, I thought, 'Okay, there's something there that I can work with.' I feel that now as a designer I come in with more intention about how I want the end result to look like. The very first collection I did wasn't really a collection, I was just designing this and that. Now I'm actually putting thought into how I can connect the pieces and how I want them to be presented.\n\n", attributes:redFont)
////        
////        let Q13 = NSAttributedString(string: "What advice would you guys have for emerging designers such as yourself?\n")
////        let A13 = NSAttributedString(string: "To really know yourself. Know what you want for your collection or brand. Don't allow other people to influence your brand so much. There have been people that I've spoken to, and I feel that if you're not confident enough as a designer, you end up breaking down because of someone else's expectations of you. Really do what you feel in your heart is right as a designer, and the creative process will just flow.", attributes:redFont)
//        
//        
//        // Add locally formatted strings to paragraph
//        para.appendAttributedString(Q1)
//        para.appendAttributedString(A1)
//        para.appendAttributedString(A1_2)
//        para.appendAttributedString(A1_3)
////        para.appendAttributedString(Q2)
////        para.appendAttributedString(A2)
////        para.appendAttributedString(Q3)
////        para.appendAttributedString(A3)
////        para.appendAttributedString(Q4)
////        para.appendAttributedString(A4)
////        para.appendAttributedString(Q5)
////        para.appendAttributedString(A5)
////        para.appendAttributedString(Q6)
////        para.appendAttributedString(A6)
////        para.appendAttributedString(Q7)
////        para.appendAttributedString(A7)
////        para.appendAttributedString(Q8)
////        para.appendAttributedString(A8)
////        para.appendAttributedString(Q9)
////        para.appendAttributedString(A9)
////        para.appendAttributedString(Q10)
////        para.appendAttributedString(A10)
////        para.appendAttributedString(Q11)
////        para.appendAttributedString(A11)
////        para.appendAttributedString(Q12)
////        para.appendAttributedString(A12)
////        para.appendAttributedString(Q13)
////        para.appendAttributedString(A13)
//        
//        // Add string to UITextView
//        self.thanks.attributedText = para
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

