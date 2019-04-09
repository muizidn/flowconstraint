//
//  Flow+TargetView.swift
//  FlowConstraint
//
//  Created by pondokios on 09/04/2019.
//  Copyright © 2019 PondokIT. All rights reserved.
//

import UIKit

public extension Flow {
    
    private func apply(with view: UIView, constraints: [ConstraintItem: Constraint.Attributes]) {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        constraints.forEach { (item, attributes) in
            let constraint = Constraint(item: item)
            constraint.build(
                view1: self.view,
                view2: view,
                attributes: attributes
            )
            self.constraints.removeValue(forKey: item)
        }
    }
    
    @discardableResult
    /// Set previous defined Constraint with superview.
    /// Invocation removes previous defined constraint
    /// from Flow instance after applying to current view
    /// - Returns: receiver Flow instance
    func withSuperview() -> Flow {
        guard let superview = view.superview else {
            fatalError("View has no superview")
        }
        withView(superview)
        return self
    }
    
    @discardableResult
    func withView(_ view: UIView, exclude items: [ConstraintItem] = []) -> Flow {
        apply(
            with: view,
            constraints: filtered(exclude: items)
        )
        return self
    }
    
    @discardableResult
    func withView(_ view: UIView, for item: ConstraintItem) -> Flow {
        let value = constraints[item] ?? Constraint.Attributes(targetItem: item)
        apply(with: view, constraints: [item: value])
        return self
    }
}
