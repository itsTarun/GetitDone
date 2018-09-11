//
//  MyLabel.swift
//  GetitDone
//
//  Created by Tarun Sharma on 09/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

class CustomLabel : UILabel {
    
    init(title: String = "default text",frame: CGRect = .zero, size : CGFloat = 16, color : UIColor = .white,  textAlign : NSTextAlignment = .left) {
        super.init(frame: frame)
        
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-v4020-Regular", size: size)
        self.textAlignment = textAlign
        
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
}
