//
//  Constraint.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/15/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit


///**
// Struct that aggregates `NSLayoutRelation`, constant and multiplier of a
// layout constraint eventually created
// */


public struct Constraint {
    /// Value of the attribute
    public let attribute: EKLayoutAttribute
    
    /// Value of the constant
    public let value: CGFloat
    
    /// Relation that applies to the `value` of the `Constant`
    public let relation: EKLayoutRelation
    
    public init(attribute: EKLayoutAttribute,
                value: CGFloat = 0,
                relation: EKLayoutRelation = .equal) {
        self.attribute = attribute
        self.value = value
        self.relation = relation
    }
    
//    /**
//     This initializer creates a `Constant` with the `value`, `relations`
//     and `multiplier` supplied.
//     - parameter value: Value of the `Constant`
//     - parameter relation: `Relation that applies to the `value`
//     - parameter multiplier: Multiplier of the `Constant`
//     - returns: the `Constant` struct created
//     */
//    public init(value: CGFloat, relation: EKLayoutRelation, multiplier: CGFloat) {
//        self.value = value
//        self.relation = relation
//        self.multiplier = multiplier
//    }
    
}
