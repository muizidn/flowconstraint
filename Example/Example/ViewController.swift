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
            .width()
            .constant(.height, constant: 900)
            .withSuperview()
        
        y.flow()
            .width(.height)
            .withSelf()
            .constant(.height, constant: 40)
            .center()
            .withSuperview()
    }
}

