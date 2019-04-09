//
//  Constraint.swift
//  FlowConstraint
//
//  Created by pondokios on 08/04/2019.
//  Copyright © 2019 PondokIT. All rights reserved.
//

import Foundation

public class Constraint {
    let item: ConstraintItem
    init(item: ConstraintItem) {
        self.item = item
    }
}

extension Constraint {
    static let left = Constraint(item: .left)
    static let right = Constraint(item: .right)
    static let top = Constraint(item: .top)
    static let bottom = Constraint(item: .bottom)
}

public extension Constraint {
    class Attributes {
        public var targetItem: ConstraintItem
        init(targetItem: ConstraintItem) {
            self.targetItem = targetItem
        }
        public var relation: Relation = .equal
        public var multiplier: CGFloat = 1
        public var constant: CGFloat = 0
    }
}

extension Constraint: Hashable {
    public static func == (lhs: Constraint, rhs: Constraint) -> Bool {
        return lhs.item == rhs.item
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(item)
    }
}

extension Constraint {
    func build(view1: UIView, view2: UIView, attributes: Attributes) {
        let _view2: UIView?
        if case .notAnAttribute = attributes.targetItem {
            _view2 = nil
        } else {
            _view2 = view2
        }
        let constraint = NSLayoutConstraint(
            item: view1,
            attribute: item,
            relatedBy: attributes.relation,
            toItem: _view2,
            attribute: attributes.targetItem,
            multiplier: attributes.multiplier,
            constant: attributes.constant
        )
        constraint.isActive = true
    }
}
