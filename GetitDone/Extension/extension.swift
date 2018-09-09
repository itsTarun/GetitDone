//
//  extension.swift
//  GetitDone
//
//  Created by Tarun Sharma on 09/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var blueZero : UIColor { return UIColor.init(hex: 0x64E4FF) }
    static var blueOne : UIColor { return UIColor.init(hex: 0x3A7BD5) }
    static var greyZero : UIColor { return UIColor.init(hex: 0x9B9B9B)}
    convenience init(red : Int, green : Int, blue : Int) {
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha : 1.0)
    }
}

public extension UIColor {
    
    convenience init(hex: Int, alpha: CGFloat) {
        let r = CGFloat((hex & 0xFF0000) >> 16)/255
        let g = CGFloat((hex & 0xFF00) >> 8)/255
        let b = CGFloat(hex & 0xFF)/255
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
    
    convenience init(hex: Int) {
        self.init(hex: hex, alpha: 1.0)
    }
    
  
}





