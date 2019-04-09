# Flow Constraint

No more too verbose constraint! Write it like a flow!

[![Build Status](https://travis-ci.org/muizidn/flowconstraint.svg?branch=master)](https://travis-ci.org/muizidn/flowconstraint)
[![codecov](https://codecov.io/gh/muizidn/flowconstraint/branch/master/graph/badge.svg)](https://codecov.io/gh/muizidn/flowconstraint)
![GitHub top language](https://img.shields.io/github/languages/top/muizidn/flowconstraint.svg?color=orange)
![Cocoapods](https://img.shields.io/cocoapods/v/flowconstraint.svg?color=red)

This simple library mainly designed to tackle repetitive and too verbose code when simply setup constraint. Many 3rd party library already put syntactic sugar to build constraint but still, some will end up in repetitive and verbose enough code. Unless you make a hack of it.

## Comparison

```swift
let red = UIView()
let yellow = UIView()

red.addSubview(yellow)
```

#### NSLayoutConstraint
```swift
// a must set property
yellow.translatesAutoresizingMaskIntoConstraints = false
let constraint = NSLayoutConstraint(
    item: yellow,
    attribute: .left,
    relatedBy: .equal,
    toItem: red,
    attribute: .left,
    multiplier: 1,
    constant: 20
)
constraint.isActive = true
```

#### NSLayoutAnchor
```swift
// a must set property
yellow.translatesAutoresizingMaskIntoConstraints = false
let constraint = yellow.leftAnchor.constraint(equalTo: red.leftAnchor, constant: 20)
constraint.isActive = true
```

If you want to set **yellow** edges to **red** edges only, you will need a lot of code, and those are repetitive task, you want to get rid of it! If you don't, I do 😄!

#### Flow Constraint
```swift
yellow.flow()
    .left()
    .withSuperview()
```

Let's split up the steps to build a constraint.
1. Create Flow instance to govern how do you create your constraint.
    > class `Flow` is designed to handle all `dirty` interfaces to build you layout.

2. Constraint setup.
There are three groups of methods available
    - Constraint
        > Interfaces to govern your Constraint

        example :
            a. left()
            b. top(.bottom)
    
    - Attribute
        > Interface to set Constraint.Attribute
    
        example :
            a. attribute(constant: -20)
            b. attribute(relation: .equal)

    - TargetView
        > Interface to finalize Constraint setup
    
        example :
            a. withSuperview()
            b. withSelf()

**Constraint** and **Attribute** interfaces will need to be finalized. Every invocation will return current Flow instance which the method not marked as `@discardableResult`. This is correct. Since before any invocation of **TargetView** interface, all declared constraint not implemented using NSLayoutConstraint under the hood yet.

NOTE: Any invocation of **TargetView** interface **will have side-effect**. Invocation of **TargetView** is supposed to be happen after all constraint match and fixed. It will enumerate all constraint definition inside Flow instance to *implement using **NSLayoutConstraint** under the hood and then remove it after*. So you can get empty and cleaned up Flow instance after any invocation of **TargetView** interface to define other constraint.

#### Example
Typically, to build edge constraint you will declare in this form in another library or using NSLayoutAnchor. This will be written in FlowConstraint equivalent.
```swift
yellow.flow().left().atrribute(constant: 20).withSuperview()
yellow.flow().top().atrribute(constant: 20).withSuperview()
yellow.flow().right().atrribute(constant: -20).withSuperview()
yellow.flow().bottom().atrribute(constant: -20).withSuperview()
```

You see that `flow()`, `attribute(constant:)`, `withSuperview()` is repetitively called. It's too verbose though it may make the code more clear 😃. I don't like it.

Some library provide helper method with `edges` like `SnapKit` to avoid this code. But most of them will make it harder to declare constant attribute to each constraint. What if you want to make `bottom` to 200 instead of -20.

This if you want to make it in FlowConstraint
```swift
yellow.flow()
    .left()
    .top()
    .attribute(constant: 20)
    .withSuperview()
    // It's okay to add line spacing. Swift is powerfull!
    .right()
    .bottom()
    .attribute(constant: -20)
    .withSuperview()
```
Or
```swift
yellow.flow()
    .left()
    .top()
    .right()
    .bottom()
    .attribute(constant: 20, for: [.left, .top])
    .attribute(constant: -20, for: [.right, .bottom])
    .withSuperview()
```
Ahh, sure FlowConstraint has been provided `edges` for you. Just check it!

## CocoaPod
Not yet ready!

## Contribute
Please make your Pull Request. I'll happy to review!

## Other Libraries
- [ViewDSL](http://github.com/muizidn/viewdsl) Combine DSL with FlowConstraint! Beautiful!
- [EventClosure](http://github.com/muizidn/eventclosure) No more #selector on you UIControl.Event handling. Use closure!