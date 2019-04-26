//
//  ViewController.swift
//  Artifex-Showcase
//
//  Created by Artifex on 2018-08-14.
//  Copyright © 2018 Artifex. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
    
    var fakeImgArr = [UIImage]()
    
    var imageShowCase: SwipePageController!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        fakeImgArr = [UIImage(named:"image-1")!, UIImage(named:"image-2")!, UIImage(named:"image-3")!]
        test()
    }
    
    func test(){
        if(fakeImgArr.count > 0){
            var yPos = 50
            for x in fakeImgArr{
                let a = UIImageView()
                a.isUserInteractionEnabled = true
                a.frame = CGRect(x: 50, y: yPos, width: 100, height: 100)
                a.contentMode = .scaleAspectFit
                a.image = x
                a.center.x = self.view.center.x
                a.tag = fakeImgArr.firstIndex(of: x)!
                self.view.addSubview(a)
                
                let tap = UITapGestureRecognizer(target: self, action: #selector(taped(sender:)))
                a.addGestureRecognizer(tap)
                yPos += 120
            }
        }
    }
    
    @objc func taped(sender:UITapGestureRecognizer){
        let imageView = ((sender.view!) as! UIImageView)
        imageShowCase = SwipePageController(imagesArray: fakeImgArr, firstIndex: imageView.tag, firstImageView: imageView)
        self.presentShowcase(showcase: imageShowCase, imageView: imageView)
    }
}
