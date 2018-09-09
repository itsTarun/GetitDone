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
        view.layer.cornerRadius = 10
        return view
    }()
    
    let titleLabel = MyLabel(title: "GET IT DONE", color: .white, size: 24, textAlign: .center)
    let infoLabel : UILabel = {
        let label = MyLabel(title: "Welcome. GET IT DONE IS A TO DO LIST.\nA REALLY DOPE TO-DO-LIST.", size: 14, textAlign: .center)
        label.numberOfLines = 2
        return label
    }()
    let nextButton = UIButton()
    
    let copyrightLabel = MyLabel(title: "© 2018 | StartxLabs", color: .greyZero, size: 14, textAlign: .center)
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
        
        backgroundView.addSubview(infoLabel)
        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        infoLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        infoLabel.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor).isActive = true
        
        backgroundView.addSubview(nextButton)
        
        view.addSubview(copyrightLabel)
        copyrightLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        copyrightLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        copyrightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant : -20).isActive = true
        
    }
    
}


