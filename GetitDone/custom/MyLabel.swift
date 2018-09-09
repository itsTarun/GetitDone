//
//  MyLabel.swift
//  GetitDone
//
//  Created by Tarun Sharma on 09/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

class MyLabel : UILabel {
    
    init(title: String = "default text",frame: CGRect = .zero, color : UIColor = .white, size : CGFloat = 16, textAlign : NSTextAlignment = .left) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-c4020-SemiBold", size: size)
        self.textAlignment = textAlign
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
}
