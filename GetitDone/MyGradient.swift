//
//  MyGradient.swift
//  GetitDone
//
//  Created by Tarun Sharma on 09/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

class MyGradient: UIView {
    
    var colors : [CGColor] = [
        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213).cgColor
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let layer = self.layer as? CAGradientLayer {
                layer.colors = self.colors
                layer.locations = [0.0,1.2]
        }
    }
    
    override class var layerClass : AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder has been implemented.")
    }
}
