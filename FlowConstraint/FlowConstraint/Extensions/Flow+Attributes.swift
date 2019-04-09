//
//  Flow+Attributes.swift
//  FlowConstraint
//
//  Created by pondokios on 09/04/2019.
//  Copyright © 2019 PondokIT. All rights reserved.
//

import UIKit

public extension Flow {
    func attributes(completion: @escaping (Constraint.Attributes) -> Void) -> Flow {
        constraints.forEach({ completion($0.value) })
        return self
    }
    
    func attributes(completion: @escaping (ConstraintItem ,Constraint.Attributes) -> Void) -> Flow {
        constraints.forEach({ completion($0.key ,$0.value) })
        return self
    }
    
    func attributes(exclude items: [ConstraintItem], completion: @escaping (Constraint.Attributes) -> Void) -> Flow {
        let attrs = filtered(exclude: items).values
        attrs.forEach(completion)
        return self
    }
    
    /// Relation, multiplier, and constant for previous defined ConstraintItems
    ///
    /// - Parameters:
    ///   - relation: Relation case instance
    ///   - multiplier: Multiplier value
    ///   - constant: Padding case instance
    /// - Returns: Receiver
    func attributes(relation: Relation, multiplier: CGFloat, constant: Padding) -> Flow {
        return attributes(completion: {
            $0.relation = relation
            $0.multiplier = multiplier
            $0.constant = constant.constant
        })
    }
    
    /// Relation except excluded ConstraintItems
    func attribute(relation: Relation, exclude items: [ConstraintItem] = []) -> Flow {
        filtered(exclude: items).forEach({ $0.value.relation = relation })
        return self
    }
    
    /// Relation for ConstraintItems
    func attribute(relation: Relation, for items: [ConstraintItem]) -> Flow {
        filtered(for: items).forEach({ $0.value.relation = relation })
        return self
    }
    
    /// Multiplier except excluded ConstraintItems
    func attribute(multiplier: CGFloat, exclude items: [ConstraintItem] = []) -> Flow {
        filtered(exclude: items).forEach({ $0.value.multiplier = multiplier })
        return self
    }
    
    /// Multiplier for ConstraintItems
    func attribute(multiplier: CGFloat, for items: [ConstraintItem]) -> Flow {
        filtered(for: items).forEach({ $0.value.multiplier = multiplier })
        return self
    }
    
    /// Constant with Padding except excluded ConstraintItems
    func attribute(constant padding: Padding , exclude items: [ConstraintItem] = []) -> Flow {
        filtered(exclude: items).forEach({ $0.value.constant = padding.constant })
        return self
    }
    
    /// Constant with Padding for ConstraintItems
    func attribute(constant padding: Padding , for items: [ConstraintItem]) -> Flow {
        filtered(for: items).forEach({ $0.value.constant = padding.constant })
        return self
    }
}
