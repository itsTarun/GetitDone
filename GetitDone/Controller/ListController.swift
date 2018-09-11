//
//  ListController.swift
//  GetitDone
//
//  Created by Tarun Sharma on 12/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import UIKit

class ListController : UIViewController {
    
    let headerView = CustomHeaderView(title: "Stuff to get done", subTitle: "4 left")
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(headerView)
        headerViewConstraints()
        
    }
    
    
    
}

extension ListController {
    fileprivate func headerViewConstraints() {
        headerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        headerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        headerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
