//
//  DesignersViewController.swift
//  FocalApp
//
//  Created by selin acar on 2016-03-06.
//  Copyright © 2016 selin acar. All rights reserved.
//

import UIKit

class DesignersViewController: UIViewController {
    @IBOutlet weak var majesticImg: UIImageView!
    @IBOutlet weak var palbotcollarsImg: UIImageView!
    @IBOutlet weak var nosignalImg: UIImageView!
    @IBOutlet weak var queueImg: UIImageView!
    
    @IBOutlet weak var MW_txt: UITextView!
    
    @IBOutlet weak var AM_txt: UITextView!
    
    @IBOutlet weak var PC_txt: UITextView!
    
    @IBOutlet weak var Q_txt: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(netHex:0xDCB1B0)
        self.title = "DESIGNERS"
        fillDesignerImages()
        fillMWText()
        fillAMText()
        fillPCText()
        fillQText()
    }
    
    func fillDesignerImages(){
        let majesticImagesArray:[UIImage] = [UIImage(named:"MonahWater_MajesticWisdom1.png")!, UIImage(named:"MonahWater_MajesticWisdom2.png")!]
        majesticImg.animationImages = majesticImagesArray
        majesticImg.animationDuration = 2.0
        majesticImg.startAnimating()

        let palbotCollarsImagesArray:[UIImage] = [UIImage(named:"PablotCollars.png")!, UIImage(named:"AdrianMoyo_PablotCollars.png")!, UIImage(named:"PaulGarcia_PablotCollars.png")!]
        palbotcollarsImg.animationImages = palbotCollarsImagesArray
        palbotcollarsImg.animationDuration = 2.0
        palbotcollarsImg.startAnimating()

//        let nosignalImagesArray:[UIImage] = [UIImage(named:"NoSignal.png")!, UIImage(named:"GabrielTing_NoSignal.png")!, UIImage(named:"RavinWong_NoSignal.png")!]
//        nosignalImg.animationImages = nosignalImagesArray
//        nosignalImg.animationDuration = 2.0
//        nosignalImg.startAnimating()
        nosignalImg.image = UIImage(named:"NoSignal.png")!
        
        let queueImagesArray:[UIImage] = [UIImage(named:"Queue.png")!, UIImage(named:"AverJayGonzales_Queue.png")!, UIImage(named:"JasonWilliams_Queue.png")!]
        queueImg.animationImages = queueImagesArray
        queueImg.animationDuration = 2.0
        queueImg.startAnimating()
    }
    
    func fillMWText(){
        // Define string attributes
        let font1 = UIFont(name: "HelveticaNeue-CondensedBold", size: 16.0) ?? UIFont.systemFontOfSize(14.0)
        let boldFont = [NSFontAttributeName:font1]
        
        let font2 = UIFont(name: "HelveticaNeue-UltraLight", size: 14.0) ?? UIFont.systemFontOfSize(13.0)
        let regFont = [NSFontAttributeName:font2]
        
        let font3 = UIFont(name: "HelveticaNeue-CondensedBold", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let nameFont = [NSFontAttributeName:font3]
        
        let font4 = UIFont(name: "HelveticaNeue-UltraLight", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let desFont = [NSFontAttributeName:font4]
        
        // Create a string that will be our paragraph
        let para = NSMutableAttributedString()
        
        // Create locally formatted strings
        let Designer = NSAttributedString(string: "DESIGNER\n", attributes:nameFont)
        let Name = NSAttributedString(string: "Monah Water\n\n", attributes:desFont)

        let Q1 = NSAttributedString(string: "Tell me about your brand.\n", attributes:boldFont)
        let A1 = NSAttributedString(string: "I'm a new designer, I just started showing last year. I'm also a multi-disciplinary artist and writer.\n\n", attributes:regFont)
        
        let Q2 = NSAttributedString(string: "What first sparked your interest in the fashion industry?\n", attributes: boldFont)
        let A2 = NSAttributedString(string: "As a child, I always used to do little fashion illustrations, but I could never sew. So I would go as far as my imagination could go with my designs. Then in High School, I took fashion, and unfortunately I failed. It kind of discouraged me in continuing. Just the year before last year I launched screen printed tees and now that I've learned how to sew, I'm just building from there.\n\n", attributes:regFont)
        
        let Q3 = NSAttributedString(string: "FOCAL has an involvement of technology in fashion. How do you think that technology and social media affects fashion in both a negative and positive way?\n", attributes:boldFont)
        let A3 = NSAttributedString(string: "Speaking about the positive impact it would have, in terms of promoting and highlighting, if you're at a fashion show and people are using their phones, tweeting, whatever they're doing, it gives a lot of exposure to designers and the industry. The negative, it takes away from the actual focus on the clothes. People are looking to get likes and views based on their post, so it can take away from the actual purpose of the show.\n\n", attributes:regFont)
        
        let Q4 = NSAttributedString(string: "How would you describe your design aesthetic?\n", attributes:boldFont)
        let A4 = NSAttributedString(string: "It's very fun, very afro-centric mixed with a blend of hip-hop and black culture. I try and take elements from each of those. I also think it pushes beyond the traditional African wear, and plays around with different cuts and designs.\n\n", attributes:regFont)
        
        let Q5 = NSAttributedString(string: "How does your personal style influence your creations?\n", attributes:boldFont)
        let A5 = NSAttributedString(string: "I'd like to say yes, but I would say no because I'm always wearing black. I'm always wearing dark colours. I live through the clothes. I feel that I am very laid back when people see me and interact with me. But I feel that inside I have a lot of energy, I'm just too shy to let it out. I let that out through the designs that I create. I also feel that as i learned to sew, and as I build and grow as a designer, I could really challenge myself and create stuff that I wanna make. I have ideas in my mind, but getting it out there and actually creating it is another thing.\n\n", attributes:regFont)
        
        let Q6 = NSAttributedString(string: "Can you describe your creative process?\n", attributes:boldFont)
        let A6 = NSAttributedString(string: "I start with one, and then it gets thrown out the window. I'll sketch a design that I have in mind, and when I see the fabric, the fabric inspires me more. The fabric and the person that's wearing what I'm going to create; I think that shapes the final outcome of the design. It usually starts off planned and then becomes a whole different thing.\n\n", attributes:regFont)
        
        let Q7 = NSAttributedString(string: "What inspired you to create this collection for the show?\n", attributes:boldFont)
        let A7 = NSAttributedString(string: "Being asked to do the show inspired me to start thinking about what I wanted to do. I have a brother that lives in Africa, and he sent fabrics. When I saw them, I said to myself'No! I have to use this!' For this line specifically, it's more feminine than the last line. There are 3 female models I'll be using, and I just want to do something that is sophisticated but also a bit edgy. But I'll see how that turns out.\n\n", attributes:regFont)
        
        let Q8 = NSAttributedString(string: "What's your favourite piece in the collection and what makes that piece special?\n", attributes:boldFont)
        let A8 = NSAttributedString(string: "Since I haven't finished the first one, I'm not sure how it's going to turn out. But so far, it's the first piece I've been putting together; a jacket and high-waisted shorts. It's my favourite because I love the colour red, and for this collection specifically I used a blend of pleather with West African fabrics. The African fabrics are tie-dyed, so it's the way that they both blend very well with each other; it's vibrant and fun. I can see it being something that's worn in the summer.\n\n", attributes:regFont)
        
        let Q9 = NSAttributedString(string: "Tell me about the first look, and the inspiration for that compared to the others.\n", attributes:boldFont)
        let A9 = NSAttributedString(string: "It was supposed to be a dress, and it didn't really turn out as a dress. I didn't even use the material that I was supposed to use! But the inspiration behind it, was once I figured out which pattern pieces I wanted, I looked at it and I was just wanting to play around with it. I wanted to to play with the fabrics as well as the design.\n\n", attributes:regFont)
        
        let Q10 = NSAttributedString(string: "Tell me about your second piece and the inspiration behind that one.\n", attributes:boldFont)
        let A10 = NSAttributedString(string: "The second piece was kind of an extension of the third piece. The pleather and West African fabric as well. This one is more feminine, a high-waisted skirt with a jacket. This time I put fringe trim attached onto the jacket. You can see that they're connected in some way; the first piece really inspired the second.\n\n", attributes:regFont)
        
        let Q11 = NSAttributedString(string: "And how about the third?\n", attributes:boldFont)
        let A11 = NSAttributedString(string: "The third, I'm still thinking. I really want to play around with this one. To still connect it somehow with the fabrics that I use, but I think I want to surprise myself.\n\n", attributes:regFont)
        
        let Q12 = NSAttributedString(string: "How have you grown as an artist from creating your first line, or your first creations, to where you are now?\n", attributes:boldFont)
        let A12 = NSAttributedString(string: "I've grown because when I first started sewing, I actually didn't really know what I was doing. Some of the designs that I did just happened out of a mistake. I would start one thing, and it would be too large. I would play around with it, and when I started seeing that people were complimenting something that was a mistake, I thought, 'Okay, there's something there that I can work with.' I feel that now as a designer I come in with more intention about how I want the end result to look like. The very first collection I did wasn't really a collection, I was just designing this and that. Now I'm actually putting thought into how I can connect the pieces and how I want them to be presented.\n\n", attributes:regFont)
        
        let Q13 = NSAttributedString(string: "What advice would you guys have for emerging designers such as yourself?\n", attributes:boldFont)
        let A13 = NSAttributedString(string: "To really know yourself. Know what you want for your collection or brand. Don't allow other people to influence your brand so much. There have been people that I've spoken to, and I feel that if you're not confident enough as a designer, you end up breaking down because of someone else's expectations of you. Really do what you feel in your heart is right as a designer, and the creative process will just flow.", attributes:regFont)
        
        
        // Add locally formatted strings to paragraph
        para.appendAttributedString(Designer)
        para.appendAttributedString(Name)
        para.appendAttributedString(Q1)
        para.appendAttributedString(A1)
        para.appendAttributedString(Q2)
        para.appendAttributedString(A2)
        para.appendAttributedString(Q3)
        para.appendAttributedString(A3)
        para.appendAttributedString(Q4)
        para.appendAttributedString(A4)
        para.appendAttributedString(Q5)
        para.appendAttributedString(A5)
        para.appendAttributedString(Q6)
        para.appendAttributedString(A6)
        para.appendAttributedString(Q7)
        para.appendAttributedString(A7)
        para.appendAttributedString(Q8)
        para.appendAttributedString(A8)
        para.appendAttributedString(Q9)
        para.appendAttributedString(A9)
        para.appendAttributedString(Q10)
        para.appendAttributedString(A10)
        para.appendAttributedString(Q11)
        para.appendAttributedString(A11)
        para.appendAttributedString(Q12)
        para.appendAttributedString(A12)
        para.appendAttributedString(Q13)
        para.appendAttributedString(A13)
       
        // Add string to UITextView
        self.MW_txt.attributedText = para
    }
    
    func fillAMText(){
        // Define string attributes
        let font1 = UIFont(name: "HelveticaNeue-UltraLight", size: 16.0) ?? UIFont.systemFontOfSize(14.0)
        let boldFont = [NSFontAttributeName:font1]
        
        let font2 = UIFont(name: "HelveticaNeue-UltraLight", size: 14.0) ?? UIFont.systemFontOfSize(13.0)
        let regFont = [NSFontAttributeName:font2]
        
        let font3 = UIFont(name: "HelveticaNeue-CondensedBold", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let nameFont = [NSFontAttributeName:font3]
        
        let font4 = UIFont(name: "HelveticaNeue-UltraLight", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let desFont = [NSFontAttributeName:font4]
        
        // Create a string that will be our paragraph
        let para = NSMutableAttributedString()
        
        // Create locally formatted strings
        let Designer = NSAttributedString(string: "DESIGNERS\n", attributes:nameFont)
        let Name = NSAttributedString(string: "Lesley Kuk, Willis Chan, Jeesoo Kim, Ella Park, & Dimitar Dangov\n\n", attributes:desFont)
        
        let Q1 = NSAttributedString(string: "What inspired you to create this collection?\n", attributes:boldFont)
        let A1 = NSAttributedString(string: "I think we all had a vision that was in line with each others, to an extent, so it was pretty easy for us to come up with a collection that really worked well together. I think we all had a clear idea of, when we started, what we wanted to accomplish and what our goal was for this theme [in this waking moment]. It was what inspired me to go even further with this collection. I felt it was strong and broad and that it included all five of our aesthetics. It allowed us to collaborate but still keep that one design idea in mind.\n\n", attributes:regFont)
        
        let Q2 = NSAttributedString(string: "What was your biggest struggle when creating this collection?\n", attributes: boldFont)
        let A2 = NSAttributedString(string: "(Dimitar Dangov:) I, personally, didn't find a struggle when creating because we are such a big team. That was very helpful, if it was two or three of us that would have been a struggle. Because we're such a big team, whenever there was any moment of uncertainty we would pick each other up. I think we each have our designated areas that we're really good in. We're all pretty open with each other so if we had a struggle it wasn't hard to go to someone for help.\n\n", attributes:regFont)
        
        let Q3 = NSAttributedString(string: "Describe your creative process.\n", attributes:boldFont)
        let A3 = NSAttributedString(string: "We would come together every week with initial sketches that we thought were good and went through what everyone had, delegating what we liked the most and what didn't work as well with everyone else's designs. Or we would say ‘tweak this,’ and it'll look much better. It was very collaborative; it wasn't ever like ‘this is Lesley's design’; it was very much paying attention to the detail and deciding if it worked, and I think that is the strongest part of our design process. We aren't very attached to one idea.\n\n", attributes:regFont)
        
        let Q4 = NSAttributedString(string: "How do you think technology and social media affect shows today in a negative and positive way?\n", attributes:boldFont)
        let A4 = NSAttributedString(string: "Negatively, it takes away the experience of the fashion show, social media, because when you're experiencing a show ten years ago, or before Instagram, there was an anticipation behind it. You would actually see the video or online images, and they were actually the full images, but now with social media, you're on Instagram literally 5 seconds after the show and see 6 other garments that are produced for this collection. Personally, I don't want to see the little close up blurry shots of something. I want to experience it; to have the whole thing. That's how it's ruined fashion in a way. There is more positive than negative though. It is such a good platform for young designers to feature your work and get acknowledged. That's the biggest beneficial factor.\n\n", attributes:regFont)
        
        let Q5 = NSAttributedString(string: "How have you grown as an artist from creating your first line to where you are now?\n", attributes:boldFont)
        let A5 = NSAttributedString(string: "We allowed each other to kind of explore different skills and techniques; stuff we might not have considered before. Now, personally, I'm much more comfortable designing things that i never would have even possibly been able to do last year. (Dimitar Dangov:) I feel the same way. I think Ante Meridiem has definitely given me a confidence boost in what I can produce. Allowing yourself to even have that challenge and work ethic. For instance, before I never would have considered to test that Asian style, but it really made sense for our silhouette and our collection. There's also a Lebanese influence behind some of the styles and I think that really helped me explore a different side, researching culture more.\n\n", attributes:regFont)
        
        let Q6 = NSAttributedString(string: "How would you describe the design aesthetic of Ante Meridiem?\n", attributes:boldFont)
        let A6 = NSAttributedString(string: "Originally, European streetwear meets traditional Japanese clothing. Not streetwear, but something similar to that. It was definitely confusing and there were many different things going on. I don't think we would have grown if we did not have that Japanese influence. It just naturally felt that way. It's a hard question because we can’t specifically pinpoint one creative part; it's so open and constantly evolving, but I would say American sportswear meets Japanese tailoring.\n\n", attributes:regFont)
        
        let Q7 = NSAttributedString(string: "What advice would you give to emerging designers such as yourselves?\n", attributes:boldFont)
        let A7 = NSAttributedString(string: "Don't take on the entire load yourself. Find a team that you work really well with and trust in their strengths. Don't micro manage your team; there's a lot of trust involved.\n\n", attributes:regFont)
        
        let Q8 = NSAttributedString(string: "What do you love most about design?\n", attributes:boldFont)
        let A8 = NSAttributedString(string: "Being able to overcome each stepping stone. When you think ‘Oh, i want to design this’ but you don't really know how; then, you finally figure out how to actually design it, and it works. it's a great feeling of success, overcoming challenges. (Dimitar Dangov) For me, it was such a personal experience to design garments. At this stage in the game we're creating by hand, and you're putting so much conceptual development into it, and then you're giving it to a person to wear on their body. In design what is often forgotten is that the act of putting on garments is so personal to us. That's kind of where Ante Meridiem went in, was with the whole idea of this waking moment; putting on garments in the morning is such a ritualistic thing.\n\n", attributes:regFont)
        // Add locally formatted strings to paragraph
        para.appendAttributedString(Designer)
        para.appendAttributedString(Name)
        para.appendAttributedString(Q1)
        para.appendAttributedString(A1)
        para.appendAttributedString(Q2)
        para.appendAttributedString(A2)
        para.appendAttributedString(Q3)
        para.appendAttributedString(A3)
        para.appendAttributedString(Q4)
        para.appendAttributedString(A4)
        para.appendAttributedString(Q5)
        para.appendAttributedString(A5)
        para.appendAttributedString(Q6)
        para.appendAttributedString(A6)
        para.appendAttributedString(Q7)
        para.appendAttributedString(A7)
        para.appendAttributedString(Q8)
        para.appendAttributedString(A8)
        
        // Add string to UITextView
        self.AM_txt.attributedText = para
    }
    
    func fillPCText(){
        // Define string attributes
        let font1 = UIFont(name: "HelveticaNeue-CondensedBold", size: 16.0) ?? UIFont.systemFontOfSize(14.0)
        let boldFont = [NSFontAttributeName:font1]
        
        let font2 = UIFont(name: "HelveticaNeue-UltraLight", size: 14.0) ?? UIFont.systemFontOfSize(13.0)
        let regFont = [NSFontAttributeName:font2]
        
        let font3 = UIFont(name: "HelveticaNeue-CondensedBold", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let nameFont = [NSFontAttributeName:font3]
        
        let font4 = UIFont(name: "HelveticaNeue-UltraLight", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let desFont = [NSFontAttributeName:font4]
        
        // Create a string that will be our paragraph
        let para = NSMutableAttributedString()
        
        // Create locally formatted strings
        let Designer = NSAttributedString(string: "DESIGNERS\n", attributes:nameFont)
        let Name = NSAttributedString(string: "Paul Garcia & Adrian Moyo\n\n", attributes:desFont)
        
        let Q1 = NSAttributedString(string: "Tell me about your brand.\n", attributes:boldFont)
        let A1 = NSAttributedString(string: "The brand is something that started two years ago, and we just started production within the last 6-8 months. Basically, we're just putting subtle changes on everyday clothes we have now- polos, tees, dresses- and we're trying to keep it simple.\n\n", attributes:regFont)
        
        let Q2 = NSAttributedString(string: "What first sparked your interest in the fashion industry?\n", attributes: boldFont)
        let A2 = NSAttributedString(string: "We take in all the trends we've seen in our lifetime. From baggy pants, and now it's all fitted and stuff. So we just try and give our perspective.\n\n", attributes:regFont)
        
        let Q3 = NSAttributedString(string: "FOCAL has an involvement of technology in fashion. How do you think that technology and social media affects fashion in both a negative and positive way?\n", attributes:boldFont)
        let A3 = NSAttributedString(string: "In a positive way, I think technology and fashion definitely make things a lot more relatable. People always want to be able to talk about what they have, and not even in a bragging way, just on more conversational terms, as well as show their own sense of style and uniqueness. In a negative way, there's plenty of, I guess you could say, fashion, which doesn't really have any creative process. It's just things people put out to have, whether it be that of having to show women half-naked, or men, it's the same process. Obviously not to the same extent, but I feel that they both have their pros and cons. It's just up to the consumer as well to be conscious of what it is their purchasing and how it is they're going to present it.\n\n", attributes:regFont)
        
        let Q4 = NSAttributedString(string: "How would you describe your design aesthetic?\n", attributes:boldFont)
        let A4 = NSAttributedString(string: "Simple, but clean. The designs are noticeable, but they don't distract or take away from the clothing or the full garment itself.\n\n", attributes:regFont)
        
        let Q5 = NSAttributedString(string: "How does your personal style influence your creations?\n", attributes:boldFont)
        let A5 = NSAttributedString(string: "Definitely. It's what I want to see. I like what I like, so that's what I portray.\n\n", attributes:regFont)
        
        let Q6 = NSAttributedString(string: "Can you describe your creative process?\n", attributes:boldFont)
        let A6 = NSAttributedString(string: "Sitting down, looking at films from Fresh Prince, to old Bruce Willis movies, to Jason Statham movies. We look at the different clothing and what they wear, and we like that. Then, how can we put our own flip on that? We sit down and throw ideas out, and I mean spew ideas out. We say might say ‘Hey, let's do a Reptar design’, and it might not happen, but it get's the creative juices flowing.\n\n", attributes:regFont)
        
        let Q7 = NSAttributedString(string: "What inspired you to create this collection for the show?\n", attributes:boldFont)
        let A7 = NSAttributedString(string: "We always, growing up, wanted to be that person who people want to see what it is they're doing or join a part of it and participate in it. So, we like clothing for us, so why don't we give our own interpretation of it and see what people think about it?\n\n", attributes:regFont)
        
        let Q8 = NSAttributedString(string: "What's your favourite piece in the collection and what makes that piece special?\n", attributes:boldFont)
        let A8 = NSAttributedString(string: "The fencing idea; it's based on the fencing uniform but with our own style to it. It's my favourite because it's not what's expected when you go to a fashion show.\n\n", attributes:regFont)
        
        let Q9 = NSAttributedString(string: "Tell me about the first look, and the inspiration for that.\n", attributes:boldFont)
        let A9 = NSAttributedString(string: "The first look was inspired by a horse jockey because growing up Ralph Lauren polo's was the most upper-class known brand [for us]. We wanted to imitate the sport with our own interpretation from it.\n\n", attributes:regFont)
        
        let Q10 = NSAttributedString(string: "How long did it take you to create that look?\n", attributes:boldFont)
        let A10 = NSAttributedString(string: "Roughly four days.\n\n", attributes:regFont)
        
        let Q11 = NSAttributedString(string: "How have you grown as an artist from creating your first line, or your first creations, to where you are now?\n", attributes:boldFont)
        let A11 = NSAttributedString(string: "In terms of what I'm thinking to do, before it was just trying to stay in the box and add my own flare. Now i try to think outside the box. Regardless of what people may think, I'm just trying to stretch those minds.\n\n", attributes:regFont)
        
        let Q12 = NSAttributedString(string: "What advice would you guys have for emerging designers such as yourself?\n", attributes:boldFont)
        let A12 = NSAttributedString(string: "Just keep pushing. The idea you have, you may think it's the worst idea. Sometimes people will look at it and think that's actually an amazing idea. Never throw away an idea. Always keep it in the stash; you never know when you can pull it out and re-use it and revamp it. Always keep pushing, stay focused, and if it's really what you want to do, let nothing distract you from it.\n\n", attributes:regFont)
        
        // Add locally formatted strings to paragraph
        para.appendAttributedString(Designer)
        para.appendAttributedString(Name)
        para.appendAttributedString(Q1)
        para.appendAttributedString(A1)
        para.appendAttributedString(Q2)
        para.appendAttributedString(A2)
        para.appendAttributedString(Q3)
        para.appendAttributedString(A3)
        para.appendAttributedString(Q4)
        para.appendAttributedString(A4)
        para.appendAttributedString(Q5)
        para.appendAttributedString(A5)
        para.appendAttributedString(Q6)
        para.appendAttributedString(A6)
        para.appendAttributedString(Q7)
        para.appendAttributedString(A7)
        para.appendAttributedString(Q8)
        para.appendAttributedString(A8)
        para.appendAttributedString(Q9)
        para.appendAttributedString(A9)
        para.appendAttributedString(Q10)
        para.appendAttributedString(A10)
        para.appendAttributedString(Q11)
        para.appendAttributedString(A11)
        para.appendAttributedString(Q12)
        para.appendAttributedString(A12)
        
        // Add string to UITextView
        self.PC_txt.attributedText = para
    }
    
    func fillQText(){
        // Define string attributes
        let font1 = UIFont(name: "HelveticaNeue-CondensedBold", size: 16.0) ?? UIFont.systemFontOfSize(14.0)
        let boldFont = [NSFontAttributeName:font1]
        
        let font2 = UIFont(name: "HelveticaNeue-UltraLight", size: 14.0) ?? UIFont.systemFontOfSize(13.0)
        let regFont = [NSFontAttributeName:font2]
       
        let font3 = UIFont(name: "HelveticaNeue-CondensedBold", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let nameFont = [NSFontAttributeName:font3]
        
        let font4 = UIFont(name: "HelveticaNeue-UltraLight", size: 18.0) ?? UIFont.systemFontOfSize(14.0)
        let desFont = [NSFontAttributeName:font4]
        
        // Create a string that will be our paragraph
        let para = NSMutableAttributedString()
        
        // Create locally formatted strings
        let Designer = NSAttributedString(string: "DESIGNERS\n", attributes:nameFont)
        let Name = NSAttributedString(string: "Jason Williams & Aver-jay Gonzales\n\n", attributes:desFont)
        
        let Q1 = NSAttributedString(string: "What inspired you to create this collection?\n", attributes:boldFont)
        let A1 = NSAttributedString(string: "Our inspiration drew from hunger and desire. A hunger to become something more, without settling for less. A desire to have everyone break necks to take another glimpse at a detail that they couldn't process within the 15 seconds before and after we walk past them.\n\n", attributes:regFont)
        
        let Q2 = NSAttributedString(string: "What was your biggest struggle when creating this collection?\n", attributes: boldFont)
        let A2 = NSAttributedString(string: "The biggest struggle was creating this collection with the interference of what we call the system. We had 1000 ideas and had to stick to a single digit. Each piece is a complexity drawn off of simplicity.\n\n", attributes:regFont)
        
        let Q3 = NSAttributedString(string: "Describe your creative process?\n", attributes:boldFont)
        let A3 = NSAttributedString(string: "We had lots of spinach and direct trade coffee. Fantasized about ideas. Talked them over, sketched them out, compared everything. We did research online and in person. Assimilated information drawn from the inspirations of our inspirations, and amalgamated without overstepping our own boundaries. Special thanks to DPM for inspiration.\n\n", attributes:regFont)
        
        let Q4 = NSAttributedString(string: "How do you think technology and social media affect shows today in a negative and positive way?\n", attributes:boldFont)
        let A4 = NSAttributedString(string: "On a positive note, technology allows us to access and share information with others around the world. Social media has allowed us to expand our fan base and network globally, through other artisans that appreciate the craftsmanship.\nNegatively, it's taken away from the art of shopping. It's also created an influx of the hype, made exclusivity into a fad, and turning quality to trash by pumping quantity to the masses.\nThe beauty of fashion used to come from knowing your shit: walking into a store, digging through the racks, finding a piece you liked, and processing all the details, feeling textures and testing the quality of the stitch and then seeing how it fits. Nowadays, people are only buying what's in style based off a brand name without appreciating pieces for what they are; fine art. Through the internet and social media, we've come to an age where people are reselling artifacts at twice or thrice the retail value. Not only scamming your fellow peers, but also disrespecting the artist who placed a numerical value based off the cost of the materials and their time into making it what it is. This brings us to outsourcing cheaper labour, creating higher quantities of clothing in the lowest grade of quality, which we call fast fashion. This enables people to buy clothing at a very reasonable price, but at whose cost?\n\n", attributes:regFont)
        
        let Q5 = NSAttributedString(string: "How have you grown as an artist from creating your first line to where you are now?\n", attributes:boldFont)
        let A5 = NSAttributedString(string: "We've worked on clothing as individuals but as a collaborative duo, we've definitely grown. Having someone to pitch ideas with and being able to turn 1000 ideas into 100 by breaking down detailed specifics has fortified garments that you'll be seeing in due time.\n\n", attributes:regFont)
        
        let Q6 = NSAttributedString(string: "How would you describe the design aesthetic of Queue?\n", attributes:boldFont)
        let A6 = NSAttributedString(string: "Everything is in the details. There will be minute flaws, that indicate it's hand crafted with quality, time, and precision. But our main objective is to bridge military with urban streetwear, influenced by everyday surroundings and what we find interesting. Queue is about staying in line with your goals and ambitions, but being the 1 person in line, who's different from everyone else. Professionally Unprofessional. Stay in Queue.\n\n", attributes:regFont)
        
        let Q7 = NSAttributedString(string: "What advice would you give to emerging designers such as yourselves?\n", attributes:boldFont)
        let A7 = NSAttributedString(string: "Enjoy your craft. Work at your own pace, don't let external expectations or the system disrupt your flow and progress. Just because there's certain guidelines that have been laid out, doesn't mean that's always the right way. Encourage yourself to create your own path and do things the way you feel are right. Never settle for ‘good enough’. It G Ma.\n\n", attributes:regFont)
        
        let Q8 = NSAttributedString(string: "What do you love most about design?\n", attributes:boldFont)
        let A8 = NSAttributedString(string: "Design is a different language. You can bridge people of different cultures and barriers with anything design and entrepreneurialism. The ability to create something that's not out there, and sharing it with the universe. Humans and extraterrestrials alike.\n\n", attributes:regFont)
        
        // Add locally formatted strings to paragraph
        para.appendAttributedString(Designer)
        para.appendAttributedString(Name)
        para.appendAttributedString(Q1)
        para.appendAttributedString(A1)
        para.appendAttributedString(Q2)
        para.appendAttributedString(A2)
        para.appendAttributedString(Q3)
        para.appendAttributedString(A3)
        para.appendAttributedString(Q4)
        para.appendAttributedString(A4)
        para.appendAttributedString(Q5)
        para.appendAttributedString(A5)
        para.appendAttributedString(Q6)
        para.appendAttributedString(A6)
        para.appendAttributedString(Q7)
        para.appendAttributedString(A7)
        para.appendAttributedString(Q8)
        para.appendAttributedString(A8)
        
        // Add string to UITextView
        self.Q_txt.attributedText = para
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
