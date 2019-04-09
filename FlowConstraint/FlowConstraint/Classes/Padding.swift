//
//  Padding.swift
//  FlowConstraint
//
//  Created by pondokios on 09/04/2019.
//  Copyright © 2019 PondokIT. All rights reserved.
//

import Foundation

public enum Padding {
    case offset(CGFloat)
    case inset(CGFloat)
    
    var constant: CGFloat {
        switch self {
        case .inset(let value):
            return -value
        case .offset(let value):
            return value
        }
    }
}
