//
//  File.swift
//  topTabBar
//
//  Created by Ragaie alfy on 1/17/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

import Foundation
import UIKit
public struct TabBarItem {
    var title : String!
    var icon : UIImage!
    var viewItem : UIView!
    
    init(itemTitle : String,itemIcon : UIImage,itemView : UIView) {
        
        title = itemTitle
        icon = itemIcon
        viewItem = itemView
    }
}

public enum HeightType {
    case heightLightItem
    case heightLightBackground 
}
public extension UIImage {
    func imageWithColor(color: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        color.setFill()
        
        let context = UIGraphicsGetCurrentContext()! as CGContext
        context.translateBy(x: 0, y: self.size.height)
        context.scaleBy(x: 1.0, y: -1.0);
        context.setBlendMode(.normal)
        
        let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height) as CGRect
        context.clip(to: rect, mask: self.cgImage!)
        context.fill(rect)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()! as UIImage
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
    
}


extension UIView {
    
    func shakeIndecator() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.9
        animation.values = [-15.0, 15.0, -15.0, 15.0, -7.0, 7.0, -2.50, 2.50, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
    
}
