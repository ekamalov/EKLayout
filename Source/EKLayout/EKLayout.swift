//
//  EKLayout.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/15/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit


public class EKLayout {
    typealias classType = Test
    
    internal var repository:Repository
    internal let view:Layoutable
    
    private var constraint:Test!
    
    internal init(view:Layoutable){
        self.view = view
        self.view.prepare()
        
        self.repository = Repository()
        self.constraint = Test(layout: self)
    }
    
    internal static func activateLayout(view:Layoutable,closure:EKLayoutBuilderClosure)  {
        let layt = EKLayout(view: view)
        closure(layt)
        
        layt.repository.getProdConstraint().forEach {
            print(String(reflecting:$0.attribute),$0.value)
        }
        print("layout activated")
    }
    
}

extension EKLayout:ConstraintAttributes {
    func prepareTempBuffer(_ attribute: EKLayoutAttribute) -> Test {
        self.repository.addTempConst(attribute)
        return self.constraint
    }
}


extension EKLayout {
    @discardableResult
    internal func size(_ value:GenericConstantForValue) -> classType{
        self.width.value(value.size.width)
        self.height.value(value.size.height)
        return self.constraint
    }
}
