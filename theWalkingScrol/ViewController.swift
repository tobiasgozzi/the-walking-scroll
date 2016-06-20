//
//  ViewController.swift
//  theWalkingScrol
//
//  Created by Tobias Gozzi on 19.06.16.
//  Copyright © 2016 Tobias Gozzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollImg: UIScrollView!
    
    let HEIGHT: CGFloat = 404
    let WIDTH: CGFloat = 410
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollImg.contentSize = CGSizeMake(WIDTH*5, HEIGHT)
        
        for var x in 1...5 {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollImg.addSubview(imgView)
            
            imgView.contentMode =  UIViewContentMode.ScaleAspectFit
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 338, WIDTH, HEIGHT)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

