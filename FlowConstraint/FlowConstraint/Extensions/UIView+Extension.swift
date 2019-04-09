//
//  UIView+Extension.swift
//  FlowConstraint
//
//  Created by pondokios on 09/04/2019.
//  Copyright © 2019 PondokIT. All rights reserved.
//

import UIKit

public extension UIView {
    func flow() -> Flow {
        return Flow(view: self)
    }
}
