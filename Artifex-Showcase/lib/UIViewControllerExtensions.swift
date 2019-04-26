//
//  UIViewControllerExtensions.swift
//  Template Project iOS
//
//  Created by Artifex on 2018-08-14.
//  Copyright © 2018 Guillaume Jette. All rights reserved.
//

import UIKit

public extension UIViewController {
    func presentShowcase(showcase:SwipePageController, imageView:UIImageView) {
        
        let originalFrame:CGRect = imageView.frame
        let originalBg:UIColor = self.view.backgroundColor!
        
        showcase.modalPresentationStyle = .overCurrentContext
        
        UIView.animate(withDuration: 0.2, animations: {
            self.view.backgroundColor = .black
            imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            imageView.center.y = self.view.center.y
            imageView.contentMode = .scaleAspectFit
            
        }, completion: { _ in
            self.present(showcase, animated: false, completion: {
                imageView.frame = originalFrame
                self.view.backgroundColor = originalBg
                showcase.btnDismiss.isHidden = false
                showcase.btnMoreOptions.isHidden = false
            })
        })
    }
}
