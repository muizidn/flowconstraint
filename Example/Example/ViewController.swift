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
        
        let s = UIScrollView()
        s.backgroundColor = .blue
        
        let r = UIView()
        r.backgroundColor = .red
        
        let y = UIView()
        y.backgroundColor = .yellow
        
        view.addSubview(s)
        s.addSubview(r)
        r.addSubview(y)
        
        s.flow()
            .edges()
            .withSuperview()
        
        r.flow()
            .top()
            .bottom()
            .centerX()
            .withSuperview()
            
            .width()
            .attribute(constant: -20)
            .withSuperview()
            
            .height(.notAnAttribute)
            .attribute(constant: 900)
            .withSelf()
        
        y.flow()
            .edges(20)
            .withSuperview()
    }
}

