//
//  ShowcasePictureController.swift
//  Template Project iOS
//
//  Created by Artifex on 2018-08-14.
//  Copyright © 2018 Guillaume Jette. All rights reserved.
//

import UIKit

public class VCShowcasePicture: UIViewController,  UIScrollViewDelegate {
    
    var imvImage = UIImageView()
    
    private let scrollImg:UIScrollView = UIScrollView()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        loadUI()
    }
    
    public init(image:UIImage)
    {
        self.imvImage.image = image
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func loadUI() {
        //bg
        self.view.backgroundColor = .clear
        
        //image
        setImageWithZoom()
    }
    
    
    private func setImageWithZoom() {
        scrollImg.delegate = self
        scrollImg.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        scrollImg.backgroundColor = .clear
        scrollImg.alwaysBounceVertical = false
        scrollImg.alwaysBounceHorizontal = false
        scrollImg.showsVerticalScrollIndicator = false
        
        scrollImg.minimumZoomScale = 1.0
        scrollImg.maximumZoomScale = 2.0
        
        self.view.addSubview(scrollImg)
        
        imvImage.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        imvImage.center.y = scrollImg.center.y
        imvImage.contentMode = .scaleAspectFit
        
        scrollImg.addSubview(imvImage)
    }
    
    public func scrollViewDidZoom(_ scrollView: UIScrollView) {
        imvImage.center.y = self.view.center.y
    }
    
    public func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        scrollImg.zoom(to: self.view.frame, animated: true)
    }
    
    public func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imvImage
    }
}

