//
//  File.swift
//  GetitDone
//
//  Created by Tarun Sharma on 11/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

class CustomButton : UIButton {
    var title : String!
    init(title : String = "Next", frame : CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.title = title
        self.phaseTwo()
    }
    

    
    func phaseTwo() {
        
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(.greyLight, for: .normal)
        
        self.layer.cornerRadius = 20
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont.init(name: "Raleway-v4020-Regular", size: 16)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
