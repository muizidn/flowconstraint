//
//  Flow.swift
//  Flow
//
//  Created by pondokios on 08/04/2019.
//  Copyright © 2019 PondokIT. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public class Flow {
    unowned let view: UIView
    init(view: UIView) {
        self.view = view
    }
    
    var constraints: [ConstraintItem: Constraint.Attributes] = [:]
    
    func filtered(exclude items: [ConstraintItem]) -> [ConstraintItem: Constraint.Attributes] {
        return constraints.filter({ !items.contains($0.key) })
    }
    
    func filtered(for items: [ConstraintItem]) -> [ConstraintItem: Constraint.Attributes] {
        return constraints.filter({ items.contains($0.key) })
    }
    
    deinit {
        #if DEBUG
        print("Deinitialize Flow \(self)")
        #endif
    }
}
