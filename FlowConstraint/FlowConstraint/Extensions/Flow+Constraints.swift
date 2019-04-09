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
    func set(_ item: ConstraintItem, _ targetItem: ConstraintItem) -> Flow {
        constraints[item] = Constraint.Attributes(targetItem: targetItem)
        return self
    }
}

public extension Flow {
    /// Receiver ConstraintItem.left == Target.ConstraintItem, default `.left`
    func left(_ targetItem: ConstraintItem = .left) -> Flow {
        return set(.left, targetItem)
    }
    
    /// Receiver ConstraintItem.right == Target.ConstraintItem, default `.right`
    func right(_ targetItem: ConstraintItem = .right) -> Flow {
        return set(.right, targetItem)
    }
    
    /// Receiver ConstraintItem.top == Target.ConstraintItem, default `.top`
    func top(_ targetItem: ConstraintItem = .top) -> Flow {
        return set(.top, targetItem)
    }
    
    /// Receiver ConstraintItem.bottom == Target.ConstraintItem, default `.bottom`
    func bottom(_ targetItem: ConstraintItem = .bottom) -> Flow {
        return set(.bottom, targetItem)
    }
    
    /// Receiver ConstraintItem.leading == Target.ConstraintItem, default `.leading`
    func leading(_ targetItem: ConstraintItem = .leading) -> Flow {
        return set(.leading, targetItem)
    }
    
    /// Receiver ConstraintItem.trailing == Target.ConstraintItem, default `.trailing`
    func trailing(_ targetItem: ConstraintItem = .trailing) -> Flow {
        return set(.trailing, targetItem)
    }
    
    /// Receiver ConstraintItem.width == Target.ConstraintItem, default `.width`
    func width(_ targetItem: ConstraintItem = .width) -> Flow {
        return set(.width, targetItem)
    }
    
    /// Receiver ConstraintItem.height == Target.ConstraintItem, default `.height`
    func height(_ targetItem: ConstraintItem = .height) -> Flow {
        return set(.height, targetItem)
    }
    
    /// Receiver ConstraintItem.centerX == Target.ConstraintItem, default `.centerX`
    func centerX(_ targetItem: ConstraintItem = .centerX) -> Flow {
        return set(.centerX, targetItem)
    }
    
    /// Receiver ConstraintItem.centerY == Target.ConstraintItem, default `.centerY`
    func centerY(_ targetItem: ConstraintItem = .centerY) -> Flow {
        return set(.centerY, targetItem)
    }
    
    /// Receiver ConstraintItem.lastBaseline == Target.ConstraintItem, default `.lastBaseline`
    func lastBaseline(_ targetItem: ConstraintItem = .lastBaseline) -> Flow {
        return set(.lastBaseline, targetItem)
    }
    
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.firstBaseline == Target.ConstraintItem, default `.firstBaseline`
    func firstBaseline(_ targetItem: ConstraintItem = .firstBaseline) -> Flow {
        return set(.firstBaseline, targetItem)
    }
    
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.leftMargin == Target.ConstraintItem, default `.leftMargin`
    func leftMargin(_ targetItem: ConstraintItem = .leftMargin) -> Flow {
        return set(.leftMargin, targetItem)
    }
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.rightMargin == Target.ConstraintItem, default `.rightMargin`
    func rightMargin(_ targetItem: ConstraintItem = .rightMargin) -> Flow {
        return set(.rightMargin, targetItem)
    }
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.topMargin == Target.ConstraintItem, default `.topMargin`
    func topMargin(_ targetItem: ConstraintItem = .topMargin) -> Flow {
        return set(.topMargin, targetItem)
    }
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.bottomMargin == Target.ConstraintItem, default `.bottomMargin`
    func bottomMargin(_ targetItem: ConstraintItem = .bottomMargin) -> Flow {
        return set(.bottomMargin, targetItem)
    }
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.leadingMargin == Target.ConstraintItem, default `.leadingMargin`
    func leadingMargin(_ targetItem: ConstraintItem = .leadingMargin) -> Flow {
        return set(.leadingMargin, targetItem)
    }
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.trailingMargin == Target.ConstraintItem, default `.trailingMargin`
    func trailingMargin(_ targetItem: ConstraintItem = .trailingMargin) -> Flow {
        return set(.trailingMargin, targetItem)
    }
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.centerXWithinMargins == Target.ConstraintItem, default `.centerXWithinMargins`
    func centerXWithinMargins(_ targetItem: ConstraintItem = .centerXWithinMargins) -> Flow {
        return set(.centerXWithinMargins, targetItem)
    }
    
    @available(iOS 8.0, *)
    /// Receiver ConstraintItem.centerYWithinMargins == Target.ConstraintItem, default `.centerYWithinMargins`
    func centerYWithinMargins(_ targetItem: ConstraintItem = .centerYWithinMargins) -> Flow {
        return set(.centerYWithinMargins, targetItem)
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
