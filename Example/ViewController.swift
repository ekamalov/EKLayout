//
//  ViewController.swift
//  Example
//
//  Created by Erik Kamalov on 4/17/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let v = UIView.init(frame: .init(x: 20, y: 200, width: 100, height: 100))
        v.backgroundColor = .red
        
        UIView.transition(with: self.view, duration: 0.5, options: [.transitionCrossDissolve], animations: {
            self.view.addSubview(v)
        }, completion: nil)
        
       
        v.layout { view in
            view.size(width: 100, height: 100)
            view.centerX(20).centerY(210)
//            view.size(width: 50%, height: 10%)

//            view.top.left.margin(20)
//            view.top.margin(50).left.bottom.margin(15)
//            view.right.top.margin(10%).bottom(20%)
           
        }
        print(v.frame)
    }


}

