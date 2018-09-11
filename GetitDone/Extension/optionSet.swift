//
//  optionSet.swift
//  GetitDone
//
//  Created by Tarun Sharma on 12/09/18.
//  Copyright © 2018 Tarun Sharma. All rights reserved.
//

import Foundation


struct ButtonOptions: OptionSet {
    let rawValue: Int
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon = ButtonOptions(rawValue: 1 << 1)
}

