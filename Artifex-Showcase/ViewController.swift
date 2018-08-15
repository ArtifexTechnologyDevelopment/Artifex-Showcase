//
//  ViewController.swift
//  Artifex-Showcase
//
//  Created by Artifex on 2018-08-14.
//  Copyright © 2018 Artifex. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
    
    let a = UIImageView()
    var b: SwipePageController!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        test()
        
        
    }
    
    func test(){
        
        a.isUserInteractionEnabled = true
        a.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        a.backgroundColor = .red
        a.image = #imageLiteral(resourceName: "bg")
        self.view.addSubview(a)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapeee))
        a.addGestureRecognizer(tap)
    }
    
    @objc func tapeee(){
        b = SwipePageController(imagesArray: [a.image!], firstImageView: a)
        self.presentShowcase(showcase: b, imageView: a)
    }
}
