//
//  ViewController.swift
//  Example
//
//  Created by pondokios on 09/04/2019.
//  Copyright © 2019 pondokios. All rights reserved.
//

import UIKit
import FlowConstraint

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let r = UIView()
        r.backgroundColor = .red
        
        let y = UIView()
        y.backgroundColor = .yellow
        
        view.addSubview(r)
        view.addSubview(y)
        
        r.flow()
            .top()
            .bottom()
            .left()
            .right()
            .attribute(constant: .offset(20), exclude: [.right, .bottom])
            .attribute(constant: .inset(20), for: [.right])
            .attribute(constant: .inset(200), for: [.bottom])
            .withSuperview()
        
        y.flow()
            .top(.bottom)
            .attribute(constant: .offset(20))
            .withView(r)

            .left()
            .attribute(constant: .offset(20))
            .withSuperview()
            
            .bottom()
            .right()
            .attribute(constant: .inset(20))
            .withSuperview()
    }
    
    
}

