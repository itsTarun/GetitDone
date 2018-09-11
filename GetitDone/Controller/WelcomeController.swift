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
        let view = CustomGradient()
        view.layer.cornerRadius = 20
        return view
    }()
    
    let titleLabel = CustomLabel(title: "GET IT DONE", size: 24, textAlign: .center)
    
    let infoLabel : UILabel = {
        let label = CustomLabel(title: "WELCOME.GET IT DONE IS A TO DO LIST. \nA REALLY DOPE TO-DO-LIST.", size: 14, textAlign: .center)
        label.numberOfLines = 0
        return label
        
    }()
    
    let nextButton = CustomButton(title: "Start Winning")
    
    let copyrightLabel = CustomLabel(title: "© 2018 | StartxLabs", color: .greyDark, size: 14, textAlign: .center)
    
    @objc func handleNext() {
        
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.nextButton.transform = CGAffineTransform(scaleX: 0.92, y: 0.92) // 80%
        }) { _ in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1) // 100%
            }) { _ in
                self.present(ListController(), animated: true, completion: nil)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.addTarget(self, action: #selector(self.handleNext), for: [.touchUpInside, .touchUpOutside])
        
        view.backgroundColor = .white
        // backgroundView
        view.addSubview(backgroundView)
        backgroundViewConstraints()
        
        // titleLabel
        view.addSubview(titleLabel)
        titleLabelConstraints()
        
        // infoLabel
        backgroundView.addSubview(infoLabel)
        infoLabelConstraints()
        // nextButton
        backgroundView.addSubview(nextButton)
        nextButtonConstraints()
        // copyrightLabel
        view.addSubview(copyrightLabel)
        copyrightLabelConstraints()
        
    }
   
}

extension WelcomeController {
    
    fileprivate func backgroundViewConstraints() {
        backgroundView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80).isActive = true
        backgroundView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    fileprivate func titleLabelConstraints() {
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 60).isActive = true
    }
    
    fileprivate func infoLabelConstraints() {
        infoLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        infoLabel.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor).isActive = true
        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    fileprivate func nextButtonConstraints() {
        nextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant : -60).isActive = true
    }
    
    fileprivate func copyrightLabelConstraints() {
        copyrightLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        copyrightLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        copyrightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant : -20).isActive = true
    }
    

}
