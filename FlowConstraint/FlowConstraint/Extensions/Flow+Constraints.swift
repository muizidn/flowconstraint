//
//  Flow+Constraints.swift
//  FlowConstraint
//
//  Created by pondokios on 09/04/2019.
//  Copyright © 2019 PondokIT. All rights reserved.
//

import UIKit

public extension Flow {
    /// Receiver ConstraintItem == Target.ConstraintItem
    ///
    /// - Parameters:
    ///   - item: ConstraintItem to be set
    ///   - targetItem: target Constraint
    /// - Returns: current Flow instance
    func set(_ item: ConstraintItem, _ targetItem: ConstraintItem) -> Flow {
        constraints[item] = Constraint.Attributes(targetItem: targetItem)
        return self
    }
}

public extension Flow {
    /// Receiver ConstraintItem.left == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.left`
    /// - Returns: current Flow instance
    func left(_ targetItem: ConstraintItem = .left) -> Flow {
        return set(.left, targetItem)
    }
    
    /// Receiver ConstraintItem.right == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.right`
    /// - Returns: current Flow instance
    func right(_ targetItem: ConstraintItem = .right) -> Flow {
        return set(.right, targetItem)
    }
    
    /// Receiver ConstraintItem.top == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.top`
    /// - Returns: current Flow instance
    func top(_ targetItem: ConstraintItem = .top) -> Flow {
        return set(.top, targetItem)
    }
    
    /// Receiver ConstraintItem.bottom == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.bottom`
    /// - Returns: current Flow instance
    func bottom(_ targetItem: ConstraintItem = .bottom) -> Flow {
        return set(.bottom, targetItem)
    }
    
    /// Receiver ConstraintItem.leading == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.leading`
    /// - Returns: current Flow instance
    func leading(_ targetItem: ConstraintItem = .leading) -> Flow {
        return set(.leading, targetItem)
    }
    
    /// Receiver ConstraintItem.trailing == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.trailing`
    /// - Returns: current Flow instance
    func trailing(_ targetItem: ConstraintItem = .trailing) -> Flow {
        return set(.trailing, targetItem)
    }
    
    /// Receiver ConstraintItem.width == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.width`
    /// - Returns: current Flow instance
    func width(_ targetItem: ConstraintItem = .width) -> Flow {
        return set(.width, targetItem)
    }
    
    /// Receiver ConstraintItem.height == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.height`
    /// - Returns: current Flow instance
    func height(_ targetItem: ConstraintItem = .height) -> Flow {
        return set(.height, targetItem)
    }
    
    /// Receiver ConstraintItem.centerX == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.centerX`
    /// - Returns: current Flow instance
    func centerX(_ targetItem: ConstraintItem = .centerX) -> Flow {
        return set(.centerX, targetItem)
    }
    
    /// Receiver ConstraintItem.centerY == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.centerY`
    /// - Returns: current Flow instance
    func centerY(_ targetItem: ConstraintItem = .centerY) -> Flow {
        return set(.centerY, targetItem)
    }
    
    /// Receiver ConstraintItem.lastBaseline == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.lastBaseline`
    /// - Returns: current Flow instance
    func lastBaseline(_ targetItem: ConstraintItem = .lastBaseline) -> Flow {
        return set(.lastBaseline, targetItem)
    }
    
    /// Receiver ConstraintItem.firstBaseline == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.firstBaseline`
    /// - Returns: current Flow instance
    func firstBaseline(_ targetItem: ConstraintItem = .firstBaseline) -> Flow {
        return set(.firstBaseline, targetItem)
    }
    
    /// Receiver ConstraintItem.leftMargin == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.leftMargin`
    /// - Returns: current Flow instance
    func leftMargin(_ targetItem: ConstraintItem = .leftMargin) -> Flow {
        return set(.leftMargin, targetItem)
    }
    
    /// Receiver ConstraintItem.rightMargin == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.rightMargin`
    /// - Returns: current Flow instance
    func rightMargin(_ targetItem: ConstraintItem = .rightMargin) -> Flow {
        return set(.rightMargin, targetItem)
    }
    
    /// Receiver ConstraintItem.topMargin == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.topMargin`
    /// - Returns: current Flow instance
    func topMargin(_ targetItem: ConstraintItem = .topMargin) -> Flow {
        return set(.topMargin, targetItem)
    }
    
    /// Receiver ConstraintItem.bottomMargin == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.bottomMargin`
    /// - Returns: current Flow instance
    func bottomMargin(_ targetItem: ConstraintItem = .bottomMargin) -> Flow {
        return set(.bottomMargin, targetItem)
    }
    
    /// Receiver ConstraintItem.leadingMargin == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.leadingMargin`
    /// - Returns: current Flow instance
    func leadingMargin(_ targetItem: ConstraintItem = .leadingMargin) -> Flow {
        return set(.leadingMargin, targetItem)
    }
    
    /// Receiver ConstraintItem.trailingMargin == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.trailingMargin`
    /// - Returns: current Flow instance
    func trailingMargin(_ targetItem: ConstraintItem = .trailingMargin) -> Flow {
        return set(.trailingMargin, targetItem)
    }
    
    /// Receiver ConstraintItem.centerXWithinMargins == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.centerXWithinMargins`
    /// - Returns: current Flow instance
    func centerXWithinMargins(_ targetItem: ConstraintItem = .centerXWithinMargins) -> Flow {
        return set(.centerXWithinMargins, targetItem)
    }
    
    /// Receiver ConstraintItem.centerYWithinMargins == Target.ConstraintItem
    ///
    /// - Parameter targetItem: target ConstraintItem, default `.centerYWithinMargins`
    /// - Returns: current Flow instance
    func centerYWithinMargins(_ targetItem: ConstraintItem = .centerYWithinMargins) -> Flow {
        return set(.centerYWithinMargins, targetItem)
    }
}

public extension Flow {
    
    /// Constant value for ConstraintItem
    ///
    /// - Parameters:
    ///   - item: ConstraintItem
    ///   - constant: value to be set
    /// - Returns: current Flow instance
    func constant(_ item: ConstraintItem, constant: CGFloat) -> Flow {
        let attribute = Constraint.Attributes(targetItem: .notAnAttribute)
        attribute.constant = constant
        constraints[item] = attribute
        return self
    }
}

public extension Flow {
    
    /// Width == Height
    func size(_ size: CGFloat) -> Flow {
        return width(.notAnAttribute)
            .height(.notAnAttribute)
            .attribute(constant: size)
    }
    
    /// Width, Height == ConstraintItem
    func size(_ item: ConstraintItem) -> Flow {
        return width(item)
            .height(item)
    }
    
    /// CenterX, CenterY
    func center() -> Flow {
        return centerX().centerY()
    }
    
    /// Left, Top (constant) and Right, Bottom (-constant) with Superview
    func edges(_ constant: CGFloat = 0) -> Flow {
        return left()
            .top()
            .attribute(constant: constant)
            .withSuperview()
            
            .right()
            .bottom()
            .attribute(constant: -constant)
            .withSuperview()
    }
}
