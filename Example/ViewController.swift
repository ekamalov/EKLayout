//
//  ViewController.swift
//  Example
//
//  Created by Erik Kamalov on 4/17/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var titles: UILabel = {
        let lb = UILabel()
        lb.text = "Sign up"
        return lb
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let v = UIView.init(frame: .init(x: 20, y: 10, width: 100, height: 100))
        v.backgroundColor = .red
        
        let v1 = UIView()
        v1.backgroundColor = .green
        
        v.addSubview(titles)
        UIView.transition(with: self.view, duration: 0.5, options: [.transitionCrossDissolve], animations: {
            self.view.addSubview(v)
            self.view.addSubview(v1)
        }, completion: nil)
        
        
        v.layout { view in
            view.size(width: 100, height: 100)
            view.centerX().top(100)
        }
        
        v1.layout {$0.centerX(of: v, 20).top(of: v, 20, aligned: .bottom).size(width: 50, height: 50) }
        
        print(v1.frame)
        print(v.frame)
    }
    
    
}

