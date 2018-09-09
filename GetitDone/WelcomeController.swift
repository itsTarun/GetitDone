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
    
    let titleLabel =  MyLabel(title: "GET IT DONE", size: 24, textAlign: .center)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(backgroundView)
        
        backgroundView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        backgroundView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        
        view.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 60).isActive = true
    }
    
    
}

