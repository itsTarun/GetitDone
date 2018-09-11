//
//  CustomHeader.swift
//  GetitDone
//
//  Created by Tarun Sharma on 12/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

class CustomHeader: UIView {
    
    init(frame : CGRect = .zero, title : String = "HeaderTitle", subTitle: String = "Subtitle")
    {
        super.init(frame: frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
