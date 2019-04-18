//
//  EKLayout+Helper.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/16/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

public class Test:ConstraintAttributes {
    typealias classType = Test
    
    private var layout:EKLayout
    
    internal init(layout:EKLayout){
        self.layout = layout
    }
    
    @discardableResult
    func prepareTempBuffer(_ attribute: EKLayoutAttribute) -> Test {
        self.layout.repository.addTempConst(attribute)
        return self
    }
}

extension Test {
    @discardableResult
    internal func value(_ value:GenericConstantForValue)-> classType {
        
        guard let val = value as? Percent else {
            self.layout.repository.moveTempConstToProd(constant: value.convertToCGFloat)
            return self
        }
        
        guard let superViewRect = self.layout.view.superviewRect() else { return self }
        var calcPercent:CGFloat = 0
        layout.repository.getTempConstraint().forEach {
            switch $0.attribute {
            case .top, .bottom:
                calcPercent = val.of(superViewRect.height)
            case .left, .right:
                calcPercent = val.of(superViewRect.width)
            default:
                break
            }
        }
        self.layout.repository.moveTempConstToProd(constant: calcPercent)
        return self
    }
   
}
