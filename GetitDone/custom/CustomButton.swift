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
    var type : ButtonOptions!
    
    init(title : String = "Next", frame : CGRect = .zero, type: ButtonOptions = .roundedText) {
        super.init(frame: frame)
        self.type = type
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.title = title
        self.phaseTwo()

    }
    
    fileprivate func phaseTwo() {
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(.greyLight, for: .normal)
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont.init(name: "Raleway-v4020-Regular", size: 16)
        }
        switch self.type {
        case .roundedText:
            self.roundedText()
            break
        case .squareIcon:
            self.squareIcon()
            break
        default:
            break
        }
    }
    
    fileprivate func squareIcon(){
        self.setTitleColor(.white, for: .normal)
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont.init(name: "Raleway-v4020-Regular", size: 24)
        }
    }
    
    fileprivate func roundedText() {
        self.layer.cornerRadius = 20
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

