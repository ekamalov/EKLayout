//
//  EKLayout+Repository.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/16/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

class Repository {
    private var temporaryConstraint = [Constraint]()
    private var prodConstraint = [Constraint]()
    
    internal func addTempConst(_ attribute:EKLayoutAttribute)  {
        let const = Constraint(attribute: attribute)
        self.temporaryConstraint.append(const)
    }
    
    internal func removeAllTempConst(){
        self.temporaryConstraint.removeAll()
    }
    
    internal func moveTempConstToProd(constant value: CGFloat){
        let tmp = temporaryConstraint.compactMap { Constraint.init(attribute: $0.attribute, value: value, relation: .equal) }
        prodConstraint.append(contentsOf: tmp)
        removeAllTempConst()
    }
    
    internal func addProdConst(_ constraints:Constraint...) {
        prodConstraint.append(contentsOf: constraints)
        removeAllTempConst()
    }
    
    
    internal func getProdConstraint()-> [Constraint] {
        return self.prodConstraint
    }
    
    internal func getTempConstraint()-> [Constraint] {
        return self.temporaryConstraint
    }
}
