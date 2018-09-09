//
//  ViewController.swift
//  GetitDone
//
//  Created by Tarun Sharma on 09/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    let backgroundView : UIView =  {
        let view = MyGradient()
     
        view.layer.cornerRadius = 16
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(backgroundView)
        
        backgroundView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        backgroundView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
    }
    
    
    
}

