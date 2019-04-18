//  MIT License
//
//  Copyright (c) 2019 Erik Kamalov <ekamalov967@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

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
